﻿#pragma checksum "..\..\..\..\View\Shade\Document.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "9FBCA57FC9A7D6F9A64B861F7D09B397F7754D91D6CD9A65753BFA29C32E4B04"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Archive.View.Shade;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Archive.View.Shade {
    
    
    /// <summary>
    /// Document
    /// </summary>
    public partial class Document : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 26 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnDocument;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnClient;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnOffer;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnArchive;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DgArchive;
        
        #line default
        #line hidden
        
        
        #line 90 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtShowNullSectors;
        
        #line default
        #line hidden
        
        
        #line 94 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtShowFullSectors;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Documents.Run RunFoundDocs;
        
        #line default
        #line hidden
        
        
        #line 102 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Documents.Run RunFoundDocsCount;
        
        #line default
        #line hidden
        
        
        #line 105 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Documents.Run RunTotalDocs;
        
        #line default
        #line hidden
        
        
        #line 106 "..\..\..\..\View\Shade\Document.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Documents.Run RunTotalDocsCount;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Archive;component/view/shade/document.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\Shade\Document.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.BtnDocument = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\..\..\View\Shade\Document.xaml"
            this.BtnDocument.Click += new System.Windows.RoutedEventHandler(this.BtnDocument_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.BtnClient = ((System.Windows.Controls.Button)(target));
            
            #line 31 "..\..\..\..\View\Shade\Document.xaml"
            this.BtnClient.Click += new System.Windows.RoutedEventHandler(this.BtnClient_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.BtnOffer = ((System.Windows.Controls.Button)(target));
            
            #line 35 "..\..\..\..\View\Shade\Document.xaml"
            this.BtnOffer.Click += new System.Windows.RoutedEventHandler(this.BtnOffer_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.BtnArchive = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\..\..\View\Shade\Document.xaml"
            this.BtnArchive.Click += new System.Windows.RoutedEventHandler(this.BtnArchive_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.DgArchive = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 6:
            this.BtShowNullSectors = ((System.Windows.Controls.Button)(target));
            return;
            case 7:
            this.BtShowFullSectors = ((System.Windows.Controls.Button)(target));
            return;
            case 8:
            this.RunFoundDocs = ((System.Windows.Documents.Run)(target));
            return;
            case 9:
            this.RunFoundDocsCount = ((System.Windows.Documents.Run)(target));
            return;
            case 10:
            this.RunTotalDocs = ((System.Windows.Documents.Run)(target));
            return;
            case 11:
            this.RunTotalDocsCount = ((System.Windows.Documents.Run)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

