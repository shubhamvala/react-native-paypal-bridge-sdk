using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Paypal.Sdk.RNPaypalSdk
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPaypalSdkModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPaypalSdkModule"/>.
        /// </summary>
        internal RNPaypalSdkModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPaypalSdk";
            }
        }
    }
}
