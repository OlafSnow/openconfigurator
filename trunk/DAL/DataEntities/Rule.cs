//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace DAL.DataEntities
{
    public partial class Rule : IDataEntity
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual int ModelID
        {
            get { return _modelID; }
            set
            {
                if (_modelID != value)
                {
                    if (Model != null && Model.ID != value)
                    {
                        Model = null;
                    }
                    _modelID = value;
                }
            }
        }
        private int _modelID;
    
        public virtual int RuleTypeID
        {
            get { return _ruleTypeID; }
            set
            {
                if (_ruleTypeID != value)
                {
                    if (Rule_Type != null && Rule_Type.ID != value)
                    {
                        Rule_Type = null;
                    }
                    _ruleTypeID = value;
                }
            }
        }
        private int _ruleTypeID;
    
        public virtual string Name
        {
            get;
            set;
        }
    
        public virtual string Expression
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual Model Model
        {
            get { return _model; }
            set
            {
                if (!ReferenceEquals(_model, value))
                {
                    var previousValue = _model;
                    _model = value;
                    FixupModel(previousValue);
                }
            }
        }
        private Model _model;
    
        public virtual Rule_Type Rule_Type
        {
            get { return _rule_Type; }
            set
            {
                if (!ReferenceEquals(_rule_Type, value))
                {
                    var previousValue = _rule_Type;
                    _rule_Type = value;
                    FixupRule_Type(previousValue);
                }
            }
        }
        private Rule_Type _rule_Type;

        #endregion
        #region Association Fixup
    
        private void FixupModel(Model previousValue)
        {
            if (previousValue != null && previousValue.Rules.Contains(this))
            {
                previousValue.Rules.Remove(this);
            }
    
            if (Model != null)
            {
                if (!Model.Rules.Contains(this))
                {
                    Model.Rules.Add(this);
                }
                if (ModelID != Model.ID)
                {
                    ModelID = Model.ID;
                }
            }
        }
    
        private void FixupRule_Type(Rule_Type previousValue)
        {
            if (previousValue != null && previousValue.Rules.Contains(this))
            {
                previousValue.Rules.Remove(this);
            }
    
            if (Rule_Type != null)
            {
                if (!Rule_Type.Rules.Contains(this))
                {
                    Rule_Type.Rules.Add(this);
                }
                if (RuleTypeID != Rule_Type.ID)
                {
                    RuleTypeID = Rule_Type.ID;
                }
            }
        }

        #endregion
    }
}
