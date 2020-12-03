﻿function Optimize-InternalUglifyHTML {
    [CmdletBinding()]
    param(
        [string] $Content
    )

    $Settings = [NUglify.Html.HtmlSettings]::new()
    $Settings.RemoveOptionalTags = $false
    $Settings.CssSettings.DecodeEscapes = $false
    [NUglify.Uglify]::Html($Content, $Settings).Code
}

<# $Settings
AttributesCaseSensitive           : False
CollapseWhitespaces               : True
RemoveComments                    : True
RemoveOptionalTags                : False
RemoveInvalidClosingTags          : True
RemoveEmptyAttributes             : True
RemoveQuotedAttributes            : True
DecodeEntityCharacters            : True
AttributeQuoteChar                :
RemoveScriptStyleTypeAttribute    : True
ShortBooleanAttribute             : True
IsFragmentOnly                    : False
MinifyJs                          : True
JsSettings                        : NUglify.JavaScript.CodeSettings
MinifyCss                         : True
MinifyCssAttributes               : True
CssSettings                       : NUglify.Css.CssSettings
PrettyPrint                       : False
RemoveJavaScript                  : False
InlineTagsPreservingSpacesAround  : {[a, True], [abbr, True], [acronym, True], [b, True]...}
KeepOneSpaceWhenCollapsing        : False
TagsWithNonCollapsableWhitespaces : {[pre, True], [textarea, True]}
KeepCommentsRegex                 : {^!, ^/?ko(?:[\s\-]|$)}
KeepTags                          : {}
RemoveAttributes                  : {}
AlphabeticallyOrderAttributes     : False
#>

<# $Settings.JsSettings

HasRenamePairs                : False
RenamePairs                   :
NoAutoRenameCollection        : {$super}
NoAutoRenameList              : $super
KnownGlobalCollection         : {}
KnownGlobalNamesList          :
DebugLookupCollection         : {}
DebugLookupList               :
AlwaysEscapeNonAscii          : False
AmdSupport                    : False
CollapseToLiteral             : True
ConstStatementsMozilla        : False
ErrorIfNotInlineSafe          : False
EvalLiteralExpressions        : True
EvalTreatment                 : Ignore
Format                        : Normal
IgnoreConditionalCompilation  : False
IgnorePreprocessorDefines     : False
InlineSafeStrings             : True
LocalRenaming                 : CrunchAll
MacSafariQuirks               : True
MinifyCode                    : True
ManualRenamesProperties       : True
PreprocessOnly                : False
PreserveFunctionNames         : False
PreserveImportantComments     : True
QuoteObjectLiteralProperties  : False
ReorderScopeDeclarations      : True
RemoveFunctionExpressionNames : True
RemoveUnneededCode            : True
ScriptVersion                 : None
SourceMode                    : Program
StrictMode                    : False
StripDebugStatements          : True
SymbolsMap                    :
WarningLevel                  : 0
AllowEmbeddedAspNetBlocks     : False
BlocksStartOnSameLine         : NewLine
IgnoreAllErrors               : False
IndentSize                    : 4
LineBreakThreshold            : 2147482647
OutputMode                    : SingleLine
TermSemicolons                : False
KillSwitch                    : 0
LineTerminator                :

IgnoreErrorCollection         : {}
IgnoreErrorList               :
PreprocessorValues            : {}
PreprocessorDefineList        :
ResourceStrings               : {}
ReplacementTokens             : {}
ReplacementFallbacks          : {}
#>

<# $Settings.CssSettings
ColorNames                : Hex
CommentMode               : Important
MinifyExpressions         : True
CssType                   : FullStyleSheet
RemoveEmptyBlocks         : True
FixIE8Fonts               : True
ExcludeVendorPrefixes     : {}
IgnoreRazorEscapeSequence : False
DecodeEscapes             : True
WarningLevel              : 0
AllowEmbeddedAspNetBlocks : False
BlocksStartOnSameLine     : NewLine
IgnoreAllErrors           : False
IndentSize                : 4
LineBreakThreshold        : 2147482647
OutputMode                : SingleLine
TermSemicolons            : False
KillSwitch                : 0
LineTerminator            :

IgnoreErrorCollection     : {}
IgnoreErrorList           :
PreprocessorValues        : {}
PreprocessorDefineList    :
ResourceStrings           : {}
ReplacementTokens         : {}
ReplacementFallbacks      : {}
#>