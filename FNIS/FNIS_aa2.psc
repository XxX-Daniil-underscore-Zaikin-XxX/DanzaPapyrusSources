Scriptname FNIS_aa2 Hidden

;****************************************************************************************************
;****************************************************************************************************
;	DO NOT MODIFY OR COMPILE THIS SCRIPT - FNIS WILL NOT WORK AFTERWARDS ****************************
;	FNIS RELIES COMPLETELY ON THE pex STRUCTURE OF THIS SCRIPT **************************************
;****************************************************************************************************

; =============================================================================
; int GetAAnumber(int listType)
; =============================================================================
; Internal function. Returns the number of mods or animation sets for this run.
; Note: the actual numbers are patched by the FNIS generator
; @param listType		- 0 mods, 1 sets, 2 crc value
; @return int 			- actual number generated by last FNIS run

int Function GetAAnumber(int listType) global
	string snMods = "03"
	string snSets = "006"
	string scrc32 = "123456"
	if ( listType == 0 )
		return snMods as int
	elseif ( listType == 1 )
		return snSets as int
	else 
		return scrc32 as int
	endif
endFunction


; =============================================================================
; string[] Function GetAAprefixList(int nMods, string mod, bool debugOutput = false)
; =============================================================================
; Internal function. Returns the list of all used AA prefixes
; Note: the actual names are patched by the FNIS generator
; @param nMods			- number of mods defining AA groups
;		 mod			- (full)full mod name (for error message and debug)
;		 debugOutput	- true to add debug output to logfile
; @return string[] 		- list of all AA prefixes

string[] Function GetAAprefixList(int nMods, string mod, bool debugOutput = false) global
	if ( debugOutput == debugOutput )				; for the time being: always output
		Debug.Trace("FNIS aa GetAAprefixList mod: " + mod + " nMods: " + nMods)
	endif

	string[] AAPrefix
	AAPrefix = new string[30]

	AAPrefix[0] = "mm0"
	AAPrefix[1] = "mm1"
	AAPrefix[2] = "mm2"
	AAPrefix[3] = "mm3"
	if ( nMods > 4 )
		AAPrefix[4] = "mm4"
		AAPrefix[5] = "mm5"
		AAPrefix[6] = "mm6"
		AAPrefix[7] = "mm7"
		if ( nMods > 8 )
			AAPrefix[8] = "mm8"
			AAPrefix[9] = "mm9"
			AAPrefix[10] = "m10"
			AAPrefix[11] = "m11"
			if ( nMods > 12 )
				AAPrefix[12] = "m12"
				AAPrefix[13] = "m13"
				AAPrefix[14] = "m14"
				AAPrefix[15] = "m15"
				if ( nMods > 16 )
					AAPrefix[16] = "m16"
					AAPrefix[17] = "m17"
					AAPrefix[18] = "m18"
					AAPrefix[19] = "m19"
					if ( nMods > 20 )
						AAPrefix[20] = "m20"
						AAPrefix[21] = "m21"
						AAPrefix[22] = "m22"
						AAPrefix[23] = "m23"
						AAPrefix[24] = "m24"
						AAPrefix[25] = "m25"
						AAPrefix[26] = "m26"
						AAPrefix[27] = "m27"
						AAPrefix[28] = "m28"
						AAPrefix[29] = "m29"
					endif
				endif
			endif
		endif
	endif
	return AAPrefix
endFunction


; =============================================================================
; string[] Function GetAAsetList(int nSets, string mod, bool debugOutput = false)
; =============================================================================
; Internal function. Returns the list of all defined AA sets
; Each set defines 3 2-byte numbers <modId><groupId><base>
; Note: the actual values are patched by the FNIS generator
; @param nSets			- number of sets defined
;		 mod			- (full)full mod name (for error message and debug)
;		 debugOutput	- true to add debug output to logfile
; @return string[] 		- list of all AA sets

string[] Function GetAAsetList(int nSets, string mod, bool debugOutput = false) global
	if ( debugOutput == debugOutput )				; for the time being: always output
		Debug.Trace("FNIS aa GetAAsetList mod: " + mod + " nSets: " + nSets)
	endif
	
	string[] AASet
	AASet = new string[128]

	AASet[0] = "010100"
	AASet[1] = "010101"
	AASet[2] = "010102"
	AASet[3] = "010103"
	AASet[4] = "010104"
	AASet[5] = "010105"
	AASet[6] = "010106"
	AASet[7] = "010107"
	AASet[8] = "010108"
	AASet[9] = "010109"
	AASet[10] = "010110"
	if ( nSets > 10 )
		AASet[11] = "010111"
		AASet[12] = "010112"
		AASet[13] = "010113"
		AASet[14] = "010114"
		AASet[15] = "010115"
		AASet[16] = "010116"
		AASet[17] = "010117"
		AASet[18] = "010118"
		AASet[19] = "010119"
		AASet[20] = "010120"
		if ( nSets > 20 )
			AASet[21] = "010121"
			AASet[22] = "010122"
			AASet[23] = "010123"
			AASet[24] = "010124"
			AASet[25] = "010125"
			AASet[26] = "010126"
			AASet[27] = "010127"
			AASet[28] = "010128"
			AASet[29] = "010129"
			AASet[30] = "010130"
			if ( nSets > 30 )
				AASet[31] = "010131"
				AASet[32] = "010132"
				AASet[33] = "010133"
				AASet[34] = "010134"
				AASet[35] = "010135"
				AASet[36] = "010136"
				AASet[37] = "010137"
				AASet[38] = "010138"
				AASet[39] = "010139"
				AASet[40] = "010140"
				if ( nSets > 40 )
					AASet[41] = "010141"
					AASet[42] = "010142"
					AASet[43] = "010143"
					AASet[44] = "010144"
					AASet[45] = "010145"
					AASet[46] = "010146"
					AASet[47] = "010147"
					AASet[48] = "010148"
					AASet[49] = "010149"
					AASet[50] = "010150"
					if ( nSets > 50 )
						AASet[51] = "010151"
						AASet[52] = "010152"
						AASet[53] = "010153"
						AASet[54] = "010154"
						AASet[55] = "010155"
						AASet[56] = "010156"
						AASet[57] = "010157"
						AASet[58] = "010158"
						AASet[59] = "010159"
						AASet[60] = "010160"
						if ( nSets > 60 )
							AASet[61] = "010161"
							AASet[62] = "010162"
							AASet[63] = "010163"
							AASet[64] = "010164"
							AASet[65] = "010165"
							AASet[66] = "010166"
							AASet[67] = "010167"
							AASet[68] = "010168"
							AASet[69] = "010169"
							AASet[70] = "010170"
							if ( nSets > 70 )
								AASet[71] = "010171"
								AASet[72] = "010172"
								AASet[73] = "010173"
								AASet[74] = "010174"
								AASet[75] = "010175"
								AASet[76] = "010176"
								AASet[77] = "010177"							
								AASet[78] = "010178"
								AASet[79] = "010179"
								AASet[80] = "010180"
								AASet[81] = "010181"
								AASet[82] = "010182"
								AASet[83] = "010183"
								AASet[84] = "010184"
								AASet[85] = "010185"
								AASet[86] = "010186"
								AASet[87] = "010187"
								AASet[88] = "010188"
								AASet[89] = "010189"
								AASet[90] = "010190"
								AASet[91] = "010191"
								AASet[92] = "010192"
								AASet[93] = "010193"
								AASet[94] = "010194"
								AASet[95] = "010195"
								AASet[96] = "010196"
								AASet[97] = "010197"
								AASet[98] = "010198"
								AASet[99] = "010199"
								AASet[100] = "010200"
								AASet[101] = "010201"
								AASet[102] = "010202"
								AASet[103] = "010203"
								AASet[104] = "010204"
								AASet[105] = "010205"
								AASet[106] = "010206"
								AASet[107] = "010207"
								AASet[108] = "010208"
								AASet[109] = "010209"
								AASet[110] = "010210"
								AASet[111] = "010211"
								AASet[112] = "010212"
								AASet[113] = "010213"
								AASet[114] = "010214"
								AASet[115] = "010215"
								AASet[116] = "010216"
								AASet[117] = "010217"
								AASet[118] = "010218"
								AASet[119] = "010219"
								AASet[120] = "010220"
								AASet[121] = "010221"
								AASet[122] = "010222"
								AASet[123] = "010223"
								AASet[124] = "010224"
								AASet[125] = "010225"
								AASet[126] = "010226"
								AASet[127] = "010227"
							endIf
						endIf
					endIf
				endIf
			endIf
		endIf
	endIf
	return AASet
endFunction
