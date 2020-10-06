const functions = require("firebase-functions");
const algoliasearch = require("algoliasearch");
const admin = require("firebase-admin");
admin.initializeApp();

const ALGOLIA_ID = functions.config().algolia.app_id;
const ALGOLIA_ADMIN_KEY = functions.config().algolia.api_key;
const ALGOLIA_SEARCH_KEY = functions.config().algolia.search_key;

const ALGOLIA_INDEX_NAME = "product_index";
const algoliaClient = algoliasearch(ALGOLIA_ID, ALGOLIA_ADMIN_KEY);

//ADD PRODUCT ITEM
exports.onProductCreated = functions.firestore
  .document("product/{productId}")
  .onCreate((snap, context) => {
    // Get the note document
    const barter = snap.data();

    // Add an 'objectID' field which Algolia requires
    barter.objectID = context.params.productId;

    // Write to the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.saveObject(barter);
  });

//REMOVE PRODUCT ITEM
exports.onProductDeleted = functions.firestore
  .document("product/{productId}")
  .onDelete((snap, context) => {
    // Delete an apartment from the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.deleteObject(context.params.productId);
  });
//EDIT PRODUCT ITEM
exports.onProductEdited = functions.firestore
  .document("product/{productId}")
  .onUpdate((change, context) => {
    const newValue = change.after.data();
    const previousValue = change.before.data();
    newValue.objectID = context.params.productId;
    // Write the update to the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.saveObject(newValue);
  });
