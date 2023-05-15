%{
// declaration
%}

digit[০-৯]
letter[অ-য়]

%%
"শুরু" {printf("Matched_ProgramStart\n");}
"শেষ" {printf("Matched_TerminateProgram\n");}
{digit}*("১"|"২"|"৩"|"৪"|"৫"|"৬"|"৭"|"৮"|"৯"|"০") {printf("Matched_BanglaInteger\n");}
{letter}*("অ"|"আ"|"ই"|"ঈ"|"উ"|"ঊ"|"ঋ"|"এ"|"ঐ"|"ও"|"ঔ"|"ক"|"খ"|"গ"|"ঘ"|"ঙ"|"চ"|"ছ"|"জ"|"ঝ"|"ঞ"|"ট"|"ঠ"|"ড"|"ঢ"|"ণ"|"ত"|"থ"|"দ"|"ধ"|"ন"|"প"|"ফ"|"ব"|"ভ"|"ম"|"য"|"র"|"ল"|"শ"|"ষ"|"স"|"হ"|"ড়"|"ঢ়"|"য়") {printf("Matched_BanglaWord\n");}
%%
int yywrap()
{

}

int main()
{
    yylex();
    return 0;
}