# clean finish_installation
./remove_langs.sh "$BUILT_PRODUCTS_DIR/$FRAMEWORKS_FOLDER_PATH/Sparkle.framework/Resources/finish_installation.app/Contents/Resources/" $nm_allowed_languages
rm -rf "$BUILT_PRODUCTS_DIR/$FRAMEWORKS_FOLDER_PATH/Sparkle.framework/Resources/finish_installation.app/Contents/Resources/Sparkle.icns"
codesign -s "$nm_signing_identity" -f "$BUILT_PRODUCTS_DIR/$FRAMEWORKS_FOLDER_PATH/Sparkle.framework/Resources/finish_installation.app"

./process_framework.sh Sparkle
