#------------------------------------------------------------------------------
# Copyright (c) 2020, 2022, Oracle and/or its affiliates.
#
# This software is dual-licensed to you under the Universal Permissive License
# (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl and Apache License
# 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose
# either license.
#
# If you elect to accept the software under the Apache License, Version 2.0,
# the following applies:
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# constants.pxi
#
# Cython file defining constants used by the thin implementation classes
# (embedded in thin_impl.pyx).
#------------------------------------------------------------------------------

# packet types
DEF TNS_PACKET_TYPE_CONNECT = 1
DEF TNS_PACKET_TYPE_ACCEPT = 2
DEF TNS_PACKET_TYPE_REFUSE = 4
DEF TNS_PACKET_TYPE_DATA = 6
DEF TNS_PACKET_TYPE_RESEND = 11
DEF TNS_PACKET_TYPE_MARKER = 12
DEF TNS_PACKET_TYPE_CONTROL = 14
DEF TNS_PACKET_TYPE_REDIRECT = 5

# packet flags
DEF TNS_PACKET_FLAG_TLS_RENEG = 0x08

# data flags
DEF TNS_DATA_FLAGS_EOF = 0x0040

# marker types
DEF TNS_MARKER_TYPE_BREAK = 1
DEF TNS_MARKER_TYPE_RESET = 2
DEF TNS_MARKER_TYPE_INTERRUPT = 3

# charset forms
DEF TNS_CS_IMPLICIT = 1
DEF TNS_CS_NCHAR = 2

# data types
DEF TNS_DATA_TYPE_VARCHAR = 1
DEF TNS_DATA_TYPE_NUMBER = 2
DEF TNS_DATA_TYPE_BINARY_INTEGER = 3
DEF TNS_DATA_TYPE_FLOAT = 4
DEF TNS_DATA_TYPE_STR = 5
DEF TNS_DATA_TYPE_VNU = 6
DEF TNS_DATA_TYPE_PDN = 7
DEF TNS_DATA_TYPE_LONG = 8
DEF TNS_DATA_TYPE_VCS = 9
DEF TNS_DATA_TYPE_TIDDEF = 10
DEF TNS_DATA_TYPE_ROWID = 11
DEF TNS_DATA_TYPE_DATE = 12
DEF TNS_DATA_TYPE_VBI = 15
DEF TNS_DATA_TYPE_RAW = 23
DEF TNS_DATA_TYPE_LONG_RAW = 24
DEF TNS_DATA_TYPE_UB2 = 25
DEF TNS_DATA_TYPE_UB4 = 26
DEF TNS_DATA_TYPE_SB1 = 27
DEF TNS_DATA_TYPE_SB2 = 28
DEF TNS_DATA_TYPE_SB4 = 29
DEF TNS_DATA_TYPE_SWORD = 30
DEF TNS_DATA_TYPE_UWORD = 31
DEF TNS_DATA_TYPE_PTRB = 32
DEF TNS_DATA_TYPE_PTRW = 33
DEF TNS_DATA_TYPE_OER8 = 34 + 256
DEF TNS_DATA_TYPE_FUN = 35 + 256
DEF TNS_DATA_TYPE_AUA = 36 + 256
DEF TNS_DATA_TYPE_RXH7 = 37 + 256
DEF TNS_DATA_TYPE_NA6 = 38 + 256
DEF TNS_DATA_TYPE_OAC = 39
DEF TNS_DATA_TYPE_AMS = 40
DEF TNS_DATA_TYPE_BRN = 41
DEF TNS_DATA_TYPE_BRP = 42 + 256
DEF TNS_DATA_TYPE_BRV = 43 + 256
DEF TNS_DATA_TYPE_KVA = 44 + 256
DEF TNS_DATA_TYPE_CLS = 45 + 256
DEF TNS_DATA_TYPE_CUI = 46 + 256
DEF TNS_DATA_TYPE_DFN = 47 + 256
DEF TNS_DATA_TYPE_DQR = 48 + 256
DEF TNS_DATA_TYPE_DSC = 49 + 256
DEF TNS_DATA_TYPE_EXE = 50 + 256
DEF TNS_DATA_TYPE_FCH = 51 + 256
DEF TNS_DATA_TYPE_GBV = 52 + 256
DEF TNS_DATA_TYPE_GEM = 53 + 256
DEF TNS_DATA_TYPE_GIV = 54 + 256
DEF TNS_DATA_TYPE_OKG = 55 + 256
DEF TNS_DATA_TYPE_HMI = 56 + 256
DEF TNS_DATA_TYPE_INO = 57 + 256
DEF TNS_DATA_TYPE_LNF = 59 + 256
DEF TNS_DATA_TYPE_ONT = 60 + 256
DEF TNS_DATA_TYPE_OPE = 61 + 256
DEF TNS_DATA_TYPE_OSQ = 62 + 256
DEF TNS_DATA_TYPE_SFE = 63 + 256
DEF TNS_DATA_TYPE_SPF = 64 + 256
DEF TNS_DATA_TYPE_VSN = 65 + 256
DEF TNS_DATA_TYPE_UD7 = 66 + 256
DEF TNS_DATA_TYPE_DSA = 67 + 256
DEF TNS_DATA_TYPE_UIN = 68
DEF TNS_DATA_TYPE_PIN = 71 + 256
DEF TNS_DATA_TYPE_PFN = 72 + 256
DEF TNS_DATA_TYPE_PPT = 73 + 256
DEF TNS_DATA_TYPE_STO = 75 + 256
DEF TNS_DATA_TYPE_ARC = 77 + 256
DEF TNS_DATA_TYPE_MRS = 78 + 256
DEF TNS_DATA_TYPE_MRT = 79 + 256
DEF TNS_DATA_TYPE_MRG = 80 + 256
DEF TNS_DATA_TYPE_MRR = 81 + 256
DEF TNS_DATA_TYPE_MRC = 82 + 256
DEF TNS_DATA_TYPE_VER = 83 + 256
DEF TNS_DATA_TYPE_LON2 = 84 + 256
DEF TNS_DATA_TYPE_INO2 = 85 + 256
DEF TNS_DATA_TYPE_ALL = 86 + 256
DEF TNS_DATA_TYPE_UDB = 87 + 256
DEF TNS_DATA_TYPE_AQI = 88 + 256
DEF TNS_DATA_TYPE_ULB = 89 + 256
DEF TNS_DATA_TYPE_ULD = 90 + 256
DEF TNS_DATA_TYPE_SLS = 91
DEF TNS_DATA_TYPE_SID = 92 + 256
DEF TNS_DATA_TYPE_NA7 = 93 + 256
DEF TNS_DATA_TYPE_LVC = 94
DEF TNS_DATA_TYPE_LVB = 95
DEF TNS_DATA_TYPE_CHAR = 96
DEF TNS_DATA_TYPE_AVC = 97
DEF TNS_DATA_TYPE_AL7 = 98 + 256
DEF TNS_DATA_TYPE_K2RPC = 99 + 256
DEF TNS_DATA_TYPE_BINARY_FLOAT = 100
DEF TNS_DATA_TYPE_BINARY_DOUBLE = 101
DEF TNS_DATA_TYPE_CURSOR = 102
DEF TNS_DATA_TYPE_RDD = 104
DEF TNS_DATA_TYPE_XDP = 103 + 256
DEF TNS_DATA_TYPE_OSL = 106
DEF TNS_DATA_TYPE_OKO8 = 107 + 256
DEF TNS_DATA_TYPE_EXT_NAMED = 108
DEF TNS_DATA_TYPE_INT_NAMED = 109
DEF TNS_DATA_TYPE_EXT_REF = 110
DEF TNS_DATA_TYPE_INT_REF = 111
DEF TNS_DATA_TYPE_CLOB = 112
DEF TNS_DATA_TYPE_BLOB = 113
DEF TNS_DATA_TYPE_BFILE = 114
DEF TNS_DATA_TYPE_CFILE = 115
DEF TNS_DATA_TYPE_RSET = 116
DEF TNS_DATA_TYPE_CWD = 117
DEF TNS_DATA_TYPE_JSON = 119
DEF TNS_DATA_TYPE_NEW_OAC = 120
DEF TNS_DATA_TYPE_UD12 = 124 + 256
DEF TNS_DATA_TYPE_AL8 = 125 + 256
DEF TNS_DATA_TYPE_LFOP = 126 + 256
DEF TNS_DATA_TYPE_FCRT = 127 + 256
DEF TNS_DATA_TYPE_DNY = 128 + 256
DEF TNS_DATA_TYPE_OPR = 129 + 256
DEF TNS_DATA_TYPE_PLS = 130 + 256
DEF TNS_DATA_TYPE_XID = 131 + 256
DEF TNS_DATA_TYPE_TXN = 132 + 256
DEF TNS_DATA_TYPE_DCB = 133 + 256
DEF TNS_DATA_TYPE_CCA = 134 + 256
DEF TNS_DATA_TYPE_WRN = 135 + 256
DEF TNS_DATA_TYPE_TLH = 137 + 256
DEF TNS_DATA_TYPE_TOH = 138 + 256
DEF TNS_DATA_TYPE_FOI = 139 + 256
DEF TNS_DATA_TYPE_SID2 = 140 + 256
DEF TNS_DATA_TYPE_TCH = 141 + 256
DEF TNS_DATA_TYPE_PII = 142 + 256
DEF TNS_DATA_TYPE_PFI = 143 + 256
DEF TNS_DATA_TYPE_PPU = 144 + 256
DEF TNS_DATA_TYPE_PTE = 145 + 256
DEF TNS_DATA_TYPE_CLV = 146
DEF TNS_DATA_TYPE_RXH8 = 148 + 256
DEF TNS_DATA_TYPE_N12 = 149 + 256
DEF TNS_DATA_TYPE_AUTH = 150 + 256
DEF TNS_DATA_TYPE_KVAL = 151 + 256
DEF TNS_DATA_TYPE_DTR = 152
DEF TNS_DATA_TYPE_DUN = 153
DEF TNS_DATA_TYPE_DOP = 154
DEF TNS_DATA_TYPE_VST = 155
DEF TNS_DATA_TYPE_ODT = 156
DEF TNS_DATA_TYPE_FGI = 157 + 256
DEF TNS_DATA_TYPE_DSY = 158 + 256
DEF TNS_DATA_TYPE_DSYR8 = 159 + 256
DEF TNS_DATA_TYPE_DSYH8 = 160 + 256
DEF TNS_DATA_TYPE_DSYL = 161 + 256
DEF TNS_DATA_TYPE_DSYT8 = 162 + 256
DEF TNS_DATA_TYPE_DSYV8 = 163 + 256
DEF TNS_DATA_TYPE_DSYP = 164 + 256
DEF TNS_DATA_TYPE_DSYF = 165 + 256
DEF TNS_DATA_TYPE_DSYK = 166 + 256
DEF TNS_DATA_TYPE_DSYY = 167 + 256
DEF TNS_DATA_TYPE_DSYQ = 168 + 256
DEF TNS_DATA_TYPE_DSYC = 169 + 256
DEF TNS_DATA_TYPE_DSYA = 170 + 256
DEF TNS_DATA_TYPE_OT8 = 171 + 256
DEF TNS_DATA_TYPE_DOL = 172
DEF TNS_DATA_TYPE_DSYTY = 173 + 256
DEF TNS_DATA_TYPE_AQE = 174 + 256
DEF TNS_DATA_TYPE_KV = 175 + 256
DEF TNS_DATA_TYPE_AQD = 176 + 256
DEF TNS_DATA_TYPE_AQ8 = 177 + 256
DEF TNS_DATA_TYPE_TIME = 178
DEF TNS_DATA_TYPE_TIME_TZ = 179
DEF TNS_DATA_TYPE_TIMESTAMP = 180
DEF TNS_DATA_TYPE_TIMESTAMP_TZ = 181
DEF TNS_DATA_TYPE_INTERVAL_YM = 182
DEF TNS_DATA_TYPE_INTERVAL_DS = 183
DEF TNS_DATA_TYPE_EDATE = 184
DEF TNS_DATA_TYPE_ETIME = 185
DEF TNS_DATA_TYPE_ETTZ = 186
DEF TNS_DATA_TYPE_ESTAMP = 187
DEF TNS_DATA_TYPE_ESTZ = 188
DEF TNS_DATA_TYPE_EIYM = 189
DEF TNS_DATA_TYPE_EIDS = 190
DEF TNS_DATA_TYPE_RFS = 193 + 256
DEF TNS_DATA_TYPE_RXH10 = 194 + 256
DEF TNS_DATA_TYPE_DCLOB = 195
DEF TNS_DATA_TYPE_DBLOB = 196
DEF TNS_DATA_TYPE_DBFILE = 197
DEF TNS_DATA_TYPE_DJSON = 198
DEF TNS_DATA_TYPE_KPN = 198 + 256
DEF TNS_DATA_TYPE_KPDNR = 199 + 256
DEF TNS_DATA_TYPE_DSYD = 200 + 256
DEF TNS_DATA_TYPE_DSYS = 201 + 256
DEF TNS_DATA_TYPE_DSYR = 202 + 256
DEF TNS_DATA_TYPE_DSYH = 203 + 256
DEF TNS_DATA_TYPE_DSYT = 204 + 256
DEF TNS_DATA_TYPE_DSYV = 205 + 256
DEF TNS_DATA_TYPE_AQM = 206 + 256
DEF TNS_DATA_TYPE_OER11 = 207 + 256
DEF TNS_DATA_TYPE_UROWID = 208
DEF TNS_DATA_TYPE_AQL = 210 + 256
DEF TNS_DATA_TYPE_OTC = 211 + 256
DEF TNS_DATA_TYPE_KFNO = 212 + 256
DEF TNS_DATA_TYPE_KFNP = 213 + 256
DEF TNS_DATA_TYPE_KGT8 = 214 + 256
DEF TNS_DATA_TYPE_RASB4 = 215 + 256
DEF TNS_DATA_TYPE_RAUB2 = 216 + 256
DEF TNS_DATA_TYPE_RAUB1 = 217 + 256
DEF TNS_DATA_TYPE_RATXT = 218 + 256
DEF TNS_DATA_TYPE_RSSB4 = 219 + 256
DEF TNS_DATA_TYPE_RSUB2 = 220 + 256
DEF TNS_DATA_TYPE_RSUB1 = 221 + 256
DEF TNS_DATA_TYPE_RSTXT = 222 + 256
DEF TNS_DATA_TYPE_RIDL = 223 + 256
DEF TNS_DATA_TYPE_GLRDD = 224 + 256
DEF TNS_DATA_TYPE_GLRDG = 225 + 256
DEF TNS_DATA_TYPE_GLRDC = 226 + 256
DEF TNS_DATA_TYPE_OKO = 227 + 256
DEF TNS_DATA_TYPE_DPP = 228 + 256
DEF TNS_DATA_TYPE_DPLS = 229 + 256
DEF TNS_DATA_TYPE_DPMOP = 230 + 256
DEF TNS_DATA_TYPE_TIMESTAMP_LTZ = 231
DEF TNS_DATA_TYPE_ESITZ = 232
DEF TNS_DATA_TYPE_UB8 = 233
DEF TNS_DATA_TYPE_STAT = 234 + 256
DEF TNS_DATA_TYPE_RFX = 235 + 256
DEF TNS_DATA_TYPE_FAL = 236 + 256
DEF TNS_DATA_TYPE_CKV = 237 + 256
DEF TNS_DATA_TYPE_DRCX = 238 + 256
DEF TNS_DATA_TYPE_KGH = 239 + 256
DEF TNS_DATA_TYPE_AQO = 240 + 256
DEF TNS_DATA_TYPE_PNTY = 241
DEF TNS_DATA_TYPE_OKGT = 242 + 256
DEF TNS_DATA_TYPE_KPFC = 243 + 256
DEF TNS_DATA_TYPE_FE2 = 244 + 256
DEF TNS_DATA_TYPE_SPFP = 245 + 256
DEF TNS_DATA_TYPE_DPULS = 246 + 256
DEF TNS_DATA_TYPE_BOOLEAN = 252
DEF TNS_DATA_TYPE_AQA = 253 + 256
DEF TNS_DATA_TYPE_KPBF = 254 + 256
DEF TNS_DATA_TYPE_TSM = 513
DEF TNS_DATA_TYPE_MSS = 514
DEF TNS_DATA_TYPE_KPC = 516
DEF TNS_DATA_TYPE_CRS = 517
DEF TNS_DATA_TYPE_KKS = 518
DEF TNS_DATA_TYPE_KSP = 519
DEF TNS_DATA_TYPE_KSPTOP = 520
DEF TNS_DATA_TYPE_KSPVAL = 521
DEF TNS_DATA_TYPE_PSS = 522
DEF TNS_DATA_TYPE_NLS = 523
DEF TNS_DATA_TYPE_ALS = 524
DEF TNS_DATA_TYPE_KSDEVTVAL = 525
DEF TNS_DATA_TYPE_KSDEVTTOP = 526
DEF TNS_DATA_TYPE_KPSPP = 527
DEF TNS_DATA_TYPE_KOL = 528
DEF TNS_DATA_TYPE_LST = 529
DEF TNS_DATA_TYPE_ACX = 530
DEF TNS_DATA_TYPE_SCS = 531
DEF TNS_DATA_TYPE_RXH = 532
DEF TNS_DATA_TYPE_KPDNS = 533
DEF TNS_DATA_TYPE_KPDCN = 534
DEF TNS_DATA_TYPE_KPNNS = 535
DEF TNS_DATA_TYPE_KPNCN = 536
DEF TNS_DATA_TYPE_KPS = 537
DEF TNS_DATA_TYPE_APINF = 538
DEF TNS_DATA_TYPE_TEN = 539
DEF TNS_DATA_TYPE_XSSCS = 540
DEF TNS_DATA_TYPE_XSSSO = 541
DEF TNS_DATA_TYPE_XSSAO = 542
DEF TNS_DATA_TYPE_KSRPC = 543
DEF TNS_DATA_TYPE_KVL = 560
DEF TNS_DATA_TYPE_SESSGET = 563
DEF TNS_DATA_TYPE_SESSREL = 564
DEF TNS_DATA_TYPE_XSSDEF = 565
DEF TNS_DATA_TYPE_PDQCINV = 572
DEF TNS_DATA_TYPE_PDQIDC = 573
DEF TNS_DATA_TYPE_KPDQCSTA = 574
DEF TNS_DATA_TYPE_KPRS = 575
DEF TNS_DATA_TYPE_KPDQIDC = 576
DEF TNS_DATA_TYPE_RTSTRM = 578
DEF TNS_DATA_TYPE_SESSRET = 579
DEF TNS_DATA_TYPE_SCN6 = 580
DEF TNS_DATA_TYPE_KECPA = 581
DEF TNS_DATA_TYPE_KECPP = 582
DEF TNS_DATA_TYPE_SXA = 583
DEF TNS_DATA_TYPE_KVARR = 584
DEF TNS_DATA_TYPE_KPNGN = 585
DEF TNS_DATA_TYPE_XSNSOP = 590
DEF TNS_DATA_TYPE_XSATTR = 591
DEF TNS_DATA_TYPE_XSNS = 592
DEF TNS_DATA_TYPE_TXT = 593
DEF TNS_DATA_TYPE_XSSESSNS = 594
DEF TNS_DATA_TYPE_XSATTOP = 595
DEF TNS_DATA_TYPE_XSCREOP = 596
DEF TNS_DATA_TYPE_XSDETOP = 597
DEF TNS_DATA_TYPE_XSDESOP = 598
DEF TNS_DATA_TYPE_XSSETSP = 599
DEF TNS_DATA_TYPE_XSSIDP = 600
DEF TNS_DATA_TYPE_XSPRIN = 601
DEF TNS_DATA_TYPE_XSKVL = 602
DEF TNS_DATA_TYPE_XSSSDEF2 = 603
DEF TNS_DATA_TYPE_XSNSOP2 = 604
DEF TNS_DATA_TYPE_XSNS2 = 605
DEF TNS_DATA_TYPE_IMPLRES = 611
DEF TNS_DATA_TYPE_OER = 612
DEF TNS_DATA_TYPE_UB1ARRAY = 613
DEF TNS_DATA_TYPE_SESSSTATE = 614
DEF TNS_DATA_TYPE_AC_REPLAY = 615
DEF TNS_DATA_TYPE_AC_CONT = 616
DEF TNS_DATA_TYPE_KPDNREQ = 622
DEF TNS_DATA_TYPE_KPDNRNF = 623
DEF TNS_DATA_TYPE_KPNGNC = 624
DEF TNS_DATA_TYPE_KPNRI = 625
DEF TNS_DATA_TYPE_AQENQ = 626
DEF TNS_DATA_TYPE_AQDEQ = 627
DEF TNS_DATA_TYPE_AQJMS = 628
DEF TNS_DATA_TYPE_KPDNRPAY = 629
DEF TNS_DATA_TYPE_KPDNRACK = 630
DEF TNS_DATA_TYPE_KPDNRMP = 631
DEF TNS_DATA_TYPE_KPDNRDQ = 632
DEF TNS_DATA_TYPE_CHUNKINFO = 636
DEF TNS_DATA_TYPE_SCN = 637
DEF TNS_DATA_TYPE_SCN8 = 638
DEF TNS_DATA_TYPE_UDS = 639
DEF TNS_DATA_TYPE_TNP = 640

# data type representations
DEF TNS_TYPE_REP_NATIVE = 0
DEF TNS_TYPE_REP_UNIVERSAL = 1
DEF TNS_TYPE_REP_ORACLE = 10

# errors
DEF TNS_ERR_VAR_NOT_IN_SELECT_LIST = 1007
DEF TNS_ERR_INBAND_MESSAGE = 12573
DEF TNS_ERR_INVALID_SERVICE_NAME = 12514
DEF TNS_ERR_INVALID_SID = 12505
DEF TNS_ERR_NO_DATA_FOUND = 1403
DEF TNS_ERR_SESSION_SHUTDOWN = 12572

# message types
DEF TNS_MSG_TYPE_PROTOCOL = 1
DEF TNS_MSG_TYPE_DATA_TYPES = 2
DEF TNS_MSG_TYPE_FUNCTION = 3
DEF TNS_MSG_TYPE_ERROR = 4
DEF TNS_MSG_TYPE_ROW_HEADER = 6
DEF TNS_MSG_TYPE_ROW_DATA = 7
DEF TNS_MSG_TYPE_PARAMETER = 8
DEF TNS_MSG_TYPE_STATUS = 9
DEF TNS_MSG_TYPE_IO_VECTOR = 11
DEF TNS_MSG_TYPE_LOB_DATA = 14
DEF TNS_MSG_TYPE_WARNING = 15
DEF TNS_MSG_TYPE_DESCRIBE_INFO = 16
DEF TNS_MSG_TYPE_PIGGYBACK = 17
DEF TNS_MSG_TYPE_FLUSH_OUT_BINDS = 19
DEF TNS_MSG_TYPE_BIT_VECTOR = 21
DEF TNS_MSG_TYPE_SERVER_SIDE_PIGGYBACK = 23
DEF TNS_MSG_TYPE_ONEWAY_FN = 26
DEF TNS_MSG_TYPE_IMPLICIT_RESULTSET = 27

# parameter keyword numbers
DEF TNS_KEYWORD_NUM_CURRENT_SCHEMA = 168
DEF TNS_KEYWORD_NUM_EDITION = 172

# bind flags
DEF TNS_BIND_USE_INDICATORS = 0x0001
DEF TNS_BIND_ARRAY = 0x0040

# bind directions
DEF TNS_BIND_DIR_OUTPUT = 16
DEF TNS_BIND_DIR_INPUT = 32
DEF TNS_BIND_DIR_INPUT_OUTPUT = 48

# execute options
DEF TNS_EXEC_OPTION_PARSE = 0x01
DEF TNS_EXEC_OPTION_BIND = 0x08
DEF TNS_EXEC_OPTION_DEFINE = 0x10
DEF TNS_EXEC_OPTION_EXECUTE = 0x20
DEF TNS_EXEC_OPTION_FETCH = 0x40
DEF TNS_EXEC_OPTION_COMMIT = 0x100
DEF TNS_EXEC_OPTION_COMMIT_REEXECUTE = 0x1
DEF TNS_EXEC_OPTION_PLSQL_BIND = 0x400
DEF TNS_EXEC_OPTION_DML_ROWCOUNTS = 0x4000
DEF TNS_EXEC_OPTION_NOT_PLSQL = 0x8000
DEF TNS_EXEC_OPTION_IMPLICIT_RESULTSET = 0x8000
DEF TNS_EXEC_OPTION_DESCRIBE = 0x20000
DEF TNS_EXEC_OPTION_NO_COMPRESSED_FETCH = 0x40000
DEF TNS_EXEC_OPTION_BATCH_ERRORS = 0x80000

# server side piggyback op codes
DEF TNS_SERVER_PIGGYBACK_QUERY_CACHE_INVALIDATION = 1
DEF TNS_SERVER_PIGGYBACK_OS_PID_MTS = 2
DEF TNS_SERVER_PIGGYBACK_TRACE_EVENT = 3
DEF TNS_SERVER_PIGGYBACK_SESS_RET = 4
DEF TNS_SERVER_PIGGYBACK_SYNC = 5
DEF TNS_SERVER_PIGGYBACK_LTXID = 7
DEF TNS_SERVER_PIGGYBACK_AC_REPLAY_CONTEXT = 8
DEF TNS_SERVER_PIGGYBACK_EXT_SYNC = 9

# session return constants
DEF TNS_SESSGET_SESSION_CHANGED = 4

# LOB operations
DEF TNS_LOB_OP_GET_LENGTH = 0x0001
DEF TNS_LOB_OP_READ = 0x0002
DEF TNS_LOB_OP_TRIM = 0x0020
DEF TNS_LOB_OP_WRITE = 0x0040
DEF TNS_LOB_OP_GET_CHUNK_SIZE = 0x4000
DEF TNS_LOB_OP_CREATE_TEMP = 0x0110
DEF TNS_LOB_OP_FREE_TEMP = 0x0111
DEF TNS_LOB_OP_OPEN = 0x8000
DEF TNS_LOB_OP_CLOSE = 0x10000
DEF TNS_LOB_OP_IS_OPEN = 0x11000
DEF TNS_LOB_OP_ARRAY = 0x80000

# LOB locator constants
DEF TNS_LOB_LOCATOR_OFFSET_FLAG_3 = 6
DEF TNS_LOB_LOCATOR_VAR_LENGTH_CHARSET = 0x80

# Temporary and Abstract LOB constants
DEF TNS_LOB_ABSTRACT_POS = 4
DEF TNS_LOB_TEMP_POS = 7
DEF TNS_LOB_TEMP_VALUE = 0x01
DEF TNS_LOB_ABSTRACT_VALUE = 0x40

# other LOB constants
DEF TNS_LOB_OPEN_READ_WRITE = 2

# end-to-end metrics
DEF TNS_END_TO_END_ACTION = 0x0010
DEF TNS_END_TO_END_CLIENT_IDENTIFIER = 0x0001
DEF TNS_END_TO_END_CLIENT_INFO = 0x0100
DEF TNS_END_TO_END_DBOP = 0x0200
DEF TNS_END_TO_END_MODULE = 0x0008

# versions
DEF TNS_VERSION_DESIRED = 318
DEF TNS_VERSION_MINIMUM = 300
DEF TNS_VERSION_MIN_ACCEPTED = 315      # 12.1
DEF TNS_VERSION_MIN_LARGE_SDU = 315
DEF TNS_VERSION_MIN_OOB_CHECK = 318

# control packet types
DEF TNS_CONTROL_TYPE_INBAND_NOTIFICATION = 8
DEF TNS_CONTROL_TYPE_RESET_OOB = 9

# other connection constants
DEF TNS_BASE_SERVICE_OPTIONS = 0x801
DEF TNS_PROTOCOL_CHARACTERISTICS = 0x4f98
DEF TNS_CONNECT_FLAGS = 0x8080
DEF TNS_CAN_RECV_ATTENTION = 0x0400
DEF TNS_CHECK_OOB = 0x01

# TTC functions
DEF TNS_FUNC_AUTH_PHASE_ONE = 118
DEF TNS_FUNC_AUTH_PHASE_TWO = 115
DEF TNS_FUNC_CLOSE_CURSORS = 105
DEF TNS_FUNC_COMMIT = 14
DEF TNS_FUNC_EXECUTE = 94
DEF TNS_FUNC_FETCH = 5
DEF TNS_FUNC_LOB_OP = 96
DEF TNS_FUNC_LOGOFF = 9
DEF TNS_FUNC_PING = 147
DEF TNS_FUNC_ROLLBACK = 15
DEF TNS_FUNC_SET_END_TO_END_ATTR = 135
DEF TNS_FUNC_REEXECUTE = 4
DEF TNS_FUNC_REEXECUTE_AND_FETCH = 78
DEF TNS_FUNC_SESSION_GET = 162
DEF TNS_FUNC_SESSION_RELEASE = 163
DEF TNS_FUNC_SET_SCHEMA = 152

# TTC authentication modes
DEF TNS_AUTH_MODE_LOGON = 0x00000001
DEF TNS_AUTH_MODE_CHANGE_PASSWORD = 0x00000002
DEF TNS_AUTH_MODE_SYSDBA = 0x00000020
DEF TNS_AUTH_MODE_SYSOPER = 0x00000040
DEF TNS_AUTH_MODE_PRELIM = 0x00000080
DEF TNS_AUTH_MODE_WITH_PASSWORD = 0x00000100
DEF TNS_AUTH_MODE_SYSASM = 0x00400000
DEF TNS_AUTH_MODE_SYSBKP = 0x01000000
DEF TNS_AUTH_MODE_SYSDGD = 0x02000000
DEF TNS_AUTH_MODE_SYSKMT = 0x04000000
DEF TNS_AUTH_MODE_SYSRAC = 0x08000000
DEF TNS_AUTH_MODE_IAM_TOKEN = 0x20000000

# character sets and encodings
DEF TNS_CHARSET_UTF8 = 873
DEF TNS_CHARSET_UTF16 = 2000
DEF TNS_ENCODING_UTF8 = "UTF-8"
DEF TNS_ENCODING_UTF16 = "UTF-16BE"

# compile time capability indices
DEF TNS_CCAP_SQL_VERSION = 0
DEF TNS_CCAP_LOGON_TYPES = 4
DEF TNS_CCAP_FIELD_VERSION = 7
DEF TNS_CCAP_SERVER_DEFINE_CONV = 8
DEF TNS_CCAP_TTC1 = 15
DEF TNS_CCAP_OCI1 = 16
DEF TNS_CCAP_TDS_VERSION = 17
DEF TNS_CCAP_RPC_VERSION = 18
DEF TNS_CCAP_RPC_SIG = 19
DEF TNS_CCAP_DBF_VERSION = 21
DEF TNS_CCAP_LOB = 23
DEF TNS_CCAP_TTC2 = 26
DEF TNS_CCAP_UB2_DTY = 27
DEF TNS_CCAP_OCI2 = 31
DEF TNS_CCAP_CLIENT_FN = 34
DEF TNS_CCAP_TTC3 = 37
DEF TNS_CCAP_TTC4 = 40
DEF TNS_CCAP_MAX = 45

# compile time capability values
DEF TNS_CCAP_SQL_VERSION_MAX = 6
DEF TNS_CCAP_FIELD_VERSION_11_2 = 6
DEF TNS_CCAP_FIELD_VERSION_12_1 = 7
DEF TNS_CCAP_FIELD_VERSION_12_2 = 8
DEF TNS_CCAP_FIELD_VERSION_12_2_EXT1 = 9
DEF TNS_CCAP_FIELD_VERSION_18_1 = 10
DEF TNS_CCAP_FIELD_VERSION_18_1_EXT_1 = 11
DEF TNS_CCAP_FIELD_VERSION_19_1 = 12
DEF TNS_CCAP_FIELD_VERSION_19_1_EXT_1 = 13
DEF TNS_CCAP_FIELD_VERSION_20_1 = 14
DEF TNS_CCAP_FIELD_VERSION_20_1_EXT_1 = 15
DEF TNS_CCAP_FIELD_VERSION_21_1 = 16
DEF TNS_CCAP_FIELD_VERSION_MAX = 16
DEF TNS_CCAP_O5LOGON = 8
DEF TNS_CCAP_O5LOGON_NP = 2
DEF TNS_CCAP_O7LOGON = 32
DEF TNS_CCAP_O8LOGON_LONG_IDENTIFIER = 64
DEF TNS_CCAP_END_OF_CALL_STATUS = 0x01
DEF TNS_CCAP_IND_RCD = 0x08
DEF TNS_CCAP_FAST_BVEC = 0x20
DEF TNS_CCAP_FAST_SESSION_PROPAGATE = 0x10
DEF TNS_CCAP_APP_CTX_PIGGYBACK = 0x80
DEF TNS_CCAP_TDS_VERSION_MAX = 3
DEF TNS_CCAP_RPC_VERSION_MAX = 7
DEF TNS_CCAP_RPC_SIG_VALUE = 3
DEF TNS_CCAP_DBF_VERSION_MAX = 1
DEF TNS_CCAP_IMPLICIT_RESULTS = 0x10
DEF TNS_CCAP_BIG_CHUNK_CLR = 0x20
DEF TNS_CCAP_KEEP_OUT_ORDER = 0x80
DEF TNS_CCAP_LOB_UB8_SIZE = 0x01
DEF TNS_CCAP_LOB_ENCS = 0x02
DEF TNS_CCAP_DRCP = 0x10
DEF TNS_CCAP_ZLNP = 0x04
DEF TNS_CCAP_INBAND_NOTIFICATION = 0x04
DEF TNS_CCAP_CLIENT_FN_MAX = 12

# runtime capability indices
DEF TNS_RCAP_COMPAT = 0
DEF TNS_RCAP_TTC = 6
DEF TNS_RCAP_MAX = 7

# runtime capability values
DEF TNS_RCAP_COMPAT_81 = 2
DEF TNS_RCAP_TTC_ZERO_COPY = 0x01
DEF TNS_RCAP_TTC_32K = 0x04

# verifier types
DEF TNS_VERIFIER_TYPE_11G_1 = 0xb152
DEF TNS_VERIFIER_TYPE_11G_2 = 0x1b25
DEF TNS_VERIFIER_TYPE_12C = 0x4815

# other constants
DEF TNS_MAX_SHORT_LENGTH = 252
DEF TNS_ESCAPE_CHAR = 253
DEF TNS_LONG_LENGTH_INDICATOR = 254
DEF TNS_NULL_LENGTH_INDICATOR = 255
DEF TNS_MAX_ROWID_LENGTH = 18
DEF TNS_DURATION_MID = 0x80000000
DEF TNS_DURATION_OFFSET = 60
DEF TNS_DURATION_SESSION = 10
DEF TNS_MIN_LONG_LENGTH = 0x8000
DEF TNS_MAX_LONG_LENGTH = 0x7fffffff
DEF TNS_SDU = 8192
DEF TNS_TDU = 65535
DEF TNS_MAX_CURSORS_TO_CLOSE = 500
DEF TNS_TXN_IN_PROGRESS = 0x00000002
DEF TNS_MAX_CONNECT_DATA = 230
DEF TNS_CHUNK_SIZE = 32767
DEF TNS_MAX_UROWID_LENGTH = 3950

# base 64 encoding alphabet
DEF TNS_BASE64_ALPHABET = \
        b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
cdef bytearray TNS_BASE64_ALPHABET_ARRAY = \
        bytearray(TNS_BASE64_ALPHABET)

# purity types
DEF PURITY_DEFAULT = 0
DEF PURITY_NEW = 1
DEF PURITY_SELF = 2

# timezone offsets
DEF TZ_HOUR_OFFSET = 20
DEF TZ_MINUTE_OFFSET = 60

# drcp release mode
DEF DRCP_DEAUTHENTICATE = 0x00000002
