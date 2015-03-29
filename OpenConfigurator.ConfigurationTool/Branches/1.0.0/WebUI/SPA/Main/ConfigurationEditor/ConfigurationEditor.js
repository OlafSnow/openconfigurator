﻿define("Main/ConfigurationEditor/ConfigurationEditor",
    [
        "text!Main/ConfigurationEditor/ConfigurationEditor.html", // html markup
        "Main/ConfigurationEditor/FeatureSelectionElem/FeatureSelectionElem"
    ],
    function (HTMLmarkup, FeatureSelectionElem) {

        var ConfigurationEditor = function (container, dataModel) {

            // Fields
            var _container = container, _dataModel = dataModel;
            var _innerHtmlElem;
            var _innerElems = {
                childElemContainer: null,
                infoMsgOverlay: null
            };
            var _visualUIElems = {};
            var _this = this;

            // Init
            this.Initialize = function () {

                // Parse html markup
                _innerHtmlElem = $($.parseHTML(HTMLmarkup));
                _innerHtmlElem.appendTo(_container);

                // Get references to dom elements
                _innerElems.childElemContainer = $(_innerHtmlElem).find(".boxContent");
                _innerElems.infoMsgOverlay = $(_innerHtmlElem).find(".infoMsgOverlay");
            };

            // Event handlers
            this.OnConfigurationInstanceLoaded = function (configInstanceCLO) {

                // Create elems for FeatureSelections
                for (var i = 0; i < configInstanceCLO.FeatureSelections.GetLength() ; i++) {
                    var featureSelectionElem = new FeatureSelectionElem(_innerElems.childElemContainer, configInstanceCLO.FeatureSelections.GetAt(i))
                    featureSelectionElem.Initialize();
                }
            }
        }
        return ConfigurationEditor;
    });