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

            // VM
            var vm = function () {
                this.FeatureName = _featureSelectionCLO.FeatureName;
                this.SelectionStateName = ko.computed(function () {
                    var selectionStateID = featureSelectionCLO.SelectionState();
                    return getEnumEntryNameByID(Enums.FeatureSelectionStates, selectionStateID);
                }, this);
                this.FeatureSelectionStates = createKOObservableArrayFromEnum(Enums.GroupRelationTypes);
                this.OnFeatureSelectionElemClicked = onClicked;
            };

            // Init
            this.Initialize = function () {

                // Parse html markup
                _innerHtmlElem = $($.parseHTML(HTMLmarkup));
                _innerHtmlElem.appendTo(_container);

                // Get references to html elems
                _innerElems.checkbox = $(_innerHtmlElem).find("input");
                _innerElems.label = $(_innerHtmlElem).find("label");

                // Load CLO
                //_innerElems.checkbox.prop("id", _featureSelectionCLO.FeatureIdentifier());
                //_innerElems.label.prop("for", _featureSelectionCLO.FeatureIdentifier());
                //_innerElems.label.text(_featureSelectionCLO.FeatureName());

                // Apply bindings
                ko.applyBindings(new vm(), _innerHtmlElem[0]);

            }

            // Public methods
            this.RemoveSelf = function () {
                $(_innerHtmlElem).remove();
            }

            // Event handlers
            function onClicked() {

                // Toggle state - TODO -> should be replaced with logic calling SolverService
                var currentSelectionState = _featureSelectionCLO.SelectionState();
                switch (currentSelectionState) {
                    case Enums.FeatureSelectionStates.Unselected:
                        _featureSelectionCLO.SelectionState(Enums.FeatureSelectionStates.Selected);
                        break;
                    case Enums.FeatureSelectionStates.Selected:
                        _featureSelectionCLO.SelectionState(Enums.FeatureSelectionStates.Deselected);
                        break;
                    case Enums.FeatureSelectionStates.Deselected:
                        _featureSelectionCLO.SelectionState(Enums.FeatureSelectionStates.Unselected);
                        break;
                }

            }
        }
        return FeatureSelectionElem;
    });