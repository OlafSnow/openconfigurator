﻿define("Main/ConfigurationEditor/FeatureSelectionElem/FeatureSelectionElem",
    [
        "text!Main/ConfigurationEditor/FeatureSelectionElem/FeatureSelectionElem.html" // html markup
    ],
    function (HTMLmarkup) {

        var FeatureSelectionElem = function (container, featureSelectionCLO) {

            // Fields
            var _container = container, _featureSelectionCLO = featureSelectionCLO;
            var _innerHtmlElem;
            var _innerElems = {
                checkbox: null,
                label: null
            };
            var _this = this;

            // Init
            this.Initialize = function () {

                // Parse html markup
                _innerHtmlElem = $($.parseHTML(HTMLmarkup));
                _innerHtmlElem.appendTo(_container);

                // Get references to html elems
                _innerElems.checkbox = $(_innerHtmlElem).find("input");
                _innerElems.label = $(_innerHtmlElem).find("label");

                // Load CLO
                _innerElems.checkbox.prop("id", _featureSelectionCLO.FeatureIdentifier());
                _innerElems.label.prop("for", _featureSelectionCLO.FeatureIdentifier());
                _innerElems.label.text(_featureSelectionCLO.FeatureName());
            }

            // Event handlers

        }
        return FeatureSelectionElem;
    });