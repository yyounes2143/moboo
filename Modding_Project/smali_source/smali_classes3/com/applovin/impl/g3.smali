.class public abstract Lcom/applovin/impl/g3;
.super Lcom/applovin/impl/l4;
.source "Proguard"


# static fields
.field public static final A7:Lcom/applovin/impl/l4;

.field public static final B7:Lcom/applovin/impl/l4;

.field public static final C7:Lcom/applovin/impl/l4;

.field public static final D7:Lcom/applovin/impl/l4;

.field public static final E7:Lcom/applovin/impl/l4;

.field public static final F7:Lcom/applovin/impl/l4;

.field public static final G7:Lcom/applovin/impl/l4;

.field public static final H7:Lcom/applovin/impl/l4;

.field public static final I6:Lcom/applovin/impl/l4;

.field public static final I7:Lcom/applovin/impl/l4;

.field public static final J6:Lcom/applovin/impl/l4;

.field public static final J7:Lcom/applovin/impl/l4;

.field public static final K6:Lcom/applovin/impl/l4;

.field public static final K7:Lcom/applovin/impl/l4;

.field public static final L6:Lcom/applovin/impl/l4;

.field public static final L7:Lcom/applovin/impl/l4;

.field public static final M6:Lcom/applovin/impl/l4;

.field public static final M7:Lcom/applovin/impl/l4;

.field public static final N6:Lcom/applovin/impl/l4;

.field public static final N7:Lcom/applovin/impl/l4;

.field public static final O6:Lcom/applovin/impl/l4;

.field public static final O7:Lcom/applovin/impl/l4;

.field public static final P6:Lcom/applovin/impl/l4;

.field public static final P7:Lcom/applovin/impl/l4;

.field public static final Q6:Lcom/applovin/impl/l4;

.field public static final Q7:Lcom/applovin/impl/l4;

.field public static final R6:Lcom/applovin/impl/l4;

.field public static final R7:Lcom/applovin/impl/l4;

.field public static final S6:Lcom/applovin/impl/l4;

.field public static final S7:Lcom/applovin/impl/l4;

.field public static final T6:Lcom/applovin/impl/l4;

.field public static final T7:Lcom/applovin/impl/l4;

.field public static final U6:Lcom/applovin/impl/l4;

.field public static final U7:Lcom/applovin/impl/l4;

.field public static final V6:Lcom/applovin/impl/l4;

.field public static final W6:Lcom/applovin/impl/l4;

.field public static final X6:Lcom/applovin/impl/l4;

.field public static final Y6:Lcom/applovin/impl/l4;

.field public static final Z6:Lcom/applovin/impl/l4;

.field public static final a7:Lcom/applovin/impl/l4;

.field public static final b7:Lcom/applovin/impl/l4;

.field public static final c7:Lcom/applovin/impl/l4;

.field public static final d7:Lcom/applovin/impl/l4;

.field public static final e7:Lcom/applovin/impl/l4;

.field public static final f7:Lcom/applovin/impl/l4;

.field public static final g7:Lcom/applovin/impl/l4;

.field public static final h7:Lcom/applovin/impl/l4;

.field public static final i7:Lcom/applovin/impl/l4;

.field public static final j7:Lcom/applovin/impl/l4;

.field public static final k7:Lcom/applovin/impl/l4;

.field public static final l7:Lcom/applovin/impl/l4;

.field public static final m7:Lcom/applovin/impl/l4;

.field public static final n7:Lcom/applovin/impl/l4;

.field public static final o7:Lcom/applovin/impl/l4;

.field public static final p7:Lcom/applovin/impl/l4;

.field public static final q7:Lcom/applovin/impl/l4;

.field public static final r7:Lcom/applovin/impl/l4;

.field public static final s7:Lcom/applovin/impl/l4;

.field public static final t7:Lcom/applovin/impl/l4;

.field public static final u7:Lcom/applovin/impl/l4;

.field public static final v7:Lcom/applovin/impl/l4;

.field public static final w7:Lcom/applovin/impl/l4;

.field public static final x7:Lcom/applovin/impl/l4;

.field public static final y7:Lcom/applovin/impl/l4;

.field public static final z7:Lcom/applovin/impl/l4;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "afi"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/applovin/impl/g3;->I6:Lcom/applovin/impl/l4;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v2, "iafiwaa"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sput-object v2, Lcom/applovin/impl/g3;->J6:Lcom/applovin/impl/l4;

    .line 20
    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-wide/16 v3, 0x5

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "afi_ms"

    .line 34
    .line 35
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sput-object v3, Lcom/applovin/impl/g3;->K6:Lcom/applovin/impl/l4;

    .line 40
    .line 41
    const-string v3, "mediation_endpoint"

    .line 42
    .line 43
    const-string v4, "https://ms.applovin.com/"

    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sput-object v3, Lcom/applovin/impl/g3;->L6:Lcom/applovin/impl/l4;

    .line 50
    .line 51
    const-string v3, "mediation_backup_endpoint"

    .line 52
    .line 53
    const-string v4, "https://ms.applvn.com/"

    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sput-object v3, Lcom/applovin/impl/g3;->M6:Lcom/applovin/impl/l4;

    .line 60
    .line 61
    const-wide/16 v3, 0x2

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "fetch_next_ad_retry_delay_ms"

    .line 72
    .line 73
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sput-object v3, Lcom/applovin/impl/g3;->N6:Lcom/applovin/impl/l4;

    .line 78
    .line 79
    const-wide/16 v3, 0x1e

    .line 80
    .line 81
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "fetch_next_ad_timeout_ms"

    .line 90
    .line 91
    invoke-static {v6, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    sput-object v5, Lcom/applovin/impl/g3;->O6:Lcom/applovin/impl/l4;

    .line 96
    .line 97
    const-wide/16 v5, 0x7

    .line 98
    .line 99
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "fetch_mediation_debugger_info_timeout_ms"

    .line 108
    .line 109
    invoke-static {v6, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    sput-object v5, Lcom/applovin/impl/g3;->P6:Lcom/applovin/impl/l4;

    .line 114
    .line 115
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    const-string v6, "auto_init_mediation_debugger"

    .line 118
    .line 119
    invoke-static {v6, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sput-object v6, Lcom/applovin/impl/g3;->Q6:Lcom/applovin/impl/l4;

    .line 124
    .line 125
    const-string v6, "postback_macros"

    .line 126
    .line 127
    const-string v7, "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}"

    .line 128
    .line 129
    invoke-static {v6, v7}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    sput-object v6, Lcom/applovin/impl/g3;->R6:Lcom/applovin/impl/l4;

    .line 134
    .line 135
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    const-string v7, "max_signal_provider_latency_ms"

    .line 144
    .line 145
    invoke-static {v7, v6}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    sput-object v6, Lcom/applovin/impl/g3;->S6:Lcom/applovin/impl/l4;

    .line 150
    .line 151
    const-wide/16 v6, 0xa

    .line 152
    .line 153
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const-string v7, "default_adapter_timeout_ms"

    .line 162
    .line 163
    invoke-static {v7, v6}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    sput-object v6, Lcom/applovin/impl/g3;->T6:Lcom/applovin/impl/l4;

    .line 168
    .line 169
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v6

    .line 173
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const-string v7, "ad_refresh_ms"

    .line 178
    .line 179
    invoke-static {v7, v6}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    sput-object v6, Lcom/applovin/impl/g3;->U6:Lcom/applovin/impl/l4;

    .line 184
    .line 185
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v3

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "ad_load_failure_refresh_ms"

    .line 194
    .line 195
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sput-object v3, Lcom/applovin/impl/g3;->V6:Lcom/applovin/impl/l4;

    .line 200
    .line 201
    const-string v3, "ad_load_failure_refresh_ignore_error_codes"

    .line 202
    .line 203
    const-string v4, "204"

    .line 204
    .line 205
    invoke-static {v3, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    sput-object v3, Lcom/applovin/impl/g3;->W6:Lcom/applovin/impl/l4;

    .line 210
    .line 211
    const-wide/16 v3, 0x0

    .line 212
    .line 213
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    const-string v4, "refresh_ad_on_app_resume_elapsed_threshold_ms"

    .line 218
    .line 219
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    sput-object v4, Lcom/applovin/impl/g3;->X6:Lcom/applovin/impl/l4;

    .line 224
    .line 225
    const-string v4, "refresh_ad_view_timer_responds_to_background"

    .line 226
    .line 227
    invoke-static {v4, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    sput-object v4, Lcom/applovin/impl/g3;->Y6:Lcom/applovin/impl/l4;

    .line 232
    .line 233
    const-string v4, "refresh_ad_view_timer_responds_to_store_kit"

    .line 234
    .line 235
    invoke-static {v4, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    sput-object v4, Lcom/applovin/impl/g3;->Z6:Lcom/applovin/impl/l4;

    .line 240
    .line 241
    const-string v4, "refresh_ad_view_timer_responds_to_window_visibility_changed"

    .line 242
    .line 243
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    sput-object v4, Lcom/applovin/impl/g3;->a7:Lcom/applovin/impl/l4;

    .line 248
    .line 249
    const-string v4, "avrsponse"

    .line 250
    .line 251
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    sput-object v4, Lcom/applovin/impl/g3;->b7:Lcom/applovin/impl/l4;

    .line 256
    .line 257
    const-string v4, "allow_pause_auto_refresh_immediately"

    .line 258
    .line 259
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    sput-object v4, Lcom/applovin/impl/g3;->c7:Lcom/applovin/impl/l4;

    .line 264
    .line 265
    const-string v4, "ad_view_race_condition_fix_enabled"

    .line 266
    .line 267
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    sput-object v4, Lcom/applovin/impl/g3;->d7:Lcom/applovin/impl/l4;

    .line 272
    .line 273
    const-string v4, "always_destroy_ad_view_on_ui_thread"

    .line 274
    .line 275
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    sput-object v4, Lcom/applovin/impl/g3;->e7:Lcom/applovin/impl/l4;

    .line 280
    .line 281
    const-string v4, "fullscreen_display_delay_ms"

    .line 282
    .line 283
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    sput-object v4, Lcom/applovin/impl/g3;->f7:Lcom/applovin/impl/l4;

    .line 288
    .line 289
    const-string v4, "susaode"

    .line 290
    .line 291
    invoke-static {v4, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    sput-object v4, Lcom/applovin/impl/g3;->g7:Lcom/applovin/impl/l4;

    .line 296
    .line 297
    const-wide/16 v6, 0x1f4

    .line 298
    .line 299
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    const-string v6, "ahdm"

    .line 304
    .line 305
    invoke-static {v6, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    sput-object v4, Lcom/applovin/impl/g3;->h7:Lcom/applovin/impl/l4;

    .line 310
    .line 311
    const-wide/16 v6, 0xf6

    .line 312
    .line 313
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    const-string v6, "ad_view_refresh_precache_request_viewability_undesired_flags"

    .line 318
    .line 319
    invoke-static {v6, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    sput-object v4, Lcom/applovin/impl/g3;->i7:Lcom/applovin/impl/l4;

    .line 324
    .line 325
    const-string v4, "ad_view_refresh_precache_request_enabled"

    .line 326
    .line 327
    invoke-static {v4, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    sput-object v4, Lcom/applovin/impl/g3;->j7:Lcom/applovin/impl/l4;

    .line 332
    .line 333
    const-string v4, "famttl_ms"

    .line 334
    .line 335
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    sput-object v3, Lcom/applovin/impl/g3;->k7:Lcom/applovin/impl/l4;

    .line 340
    .line 341
    const-wide/16 v3, -0x1

    .line 342
    .line 343
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    const-string v4, "signal_expiration_ms"

    .line 348
    .line 349
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    sput-object v4, Lcom/applovin/impl/g3;->l7:Lcom/applovin/impl/l4;

    .line 354
    .line 355
    sget-object v4, Lcom/applovin/impl/p4$b;->a:Lcom/applovin/impl/p4$b;

    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    const-string v6, "signal_cache_level"

    .line 366
    .line 367
    invoke-static {v6, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    sput-object v4, Lcom/applovin/impl/g3;->m7:Lcom/applovin/impl/l4;

    .line 372
    .line 373
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 374
    .line 375
    const-wide/16 v6, 0x4

    .line 376
    .line 377
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 378
    .line 379
    .line 380
    move-result-wide v8

    .line 381
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    const-string v9, "ad_expiration_ms"

    .line 386
    .line 387
    invoke-static {v9, v8}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 388
    .line 389
    .line 390
    move-result-object v8

    .line 391
    sput-object v8, Lcom/applovin/impl/g3;->n7:Lcom/applovin/impl/l4;

    .line 392
    .line 393
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 394
    .line 395
    .line 396
    move-result-wide v6

    .line 397
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    const-string v6, "native_ad_expiration_ms"

    .line 402
    .line 403
    invoke-static {v6, v4}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    sput-object v4, Lcom/applovin/impl/g3;->o7:Lcom/applovin/impl/l4;

    .line 408
    .line 409
    const-string v4, "rena"

    .line 410
    .line 411
    invoke-static {v4, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    sput-object v4, Lcom/applovin/impl/g3;->p7:Lcom/applovin/impl/l4;

    .line 416
    .line 417
    const-string v4, "fullscreen_ad_displayed_timeout_ms"

    .line 418
    .line 419
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    sput-object v4, Lcom/applovin/impl/g3;->q7:Lcom/applovin/impl/l4;

    .line 424
    .line 425
    const-string v4, "freast_ms"

    .line 426
    .line 427
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    sput-object v4, Lcom/applovin/impl/g3;->r7:Lcom/applovin/impl/l4;

    .line 432
    .line 433
    const-string v4, "ad_hidden_timeout_ms"

    .line 434
    .line 435
    invoke-static {v4, v3}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    sput-object v3, Lcom/applovin/impl/g3;->s7:Lcom/applovin/impl/l4;

    .line 440
    .line 441
    const-string v3, "schedule_ad_hidden_on_ad_dismiss"

    .line 442
    .line 443
    invoke-static {v3, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    sput-object v3, Lcom/applovin/impl/g3;->t7:Lcom/applovin/impl/l4;

    .line 448
    .line 449
    const-string v3, "schedule_ad_hidden_on_single_task_app_relaunch"

    .line 450
    .line 451
    invoke-static {v3, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    sput-object v3, Lcom/applovin/impl/g3;->u7:Lcom/applovin/impl/l4;

    .line 456
    .line 457
    const-wide/16 v3, 0x1

    .line 458
    .line 459
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 460
    .line 461
    .line 462
    move-result-wide v6

    .line 463
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const-string v6, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    .line 468
    .line 469
    invoke-static {v6, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    sput-object v2, Lcom/applovin/impl/g3;->v7:Lcom/applovin/impl/l4;

    .line 474
    .line 475
    const-string v2, "proe"

    .line 476
    .line 477
    invoke-static {v2, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    sput-object v2, Lcom/applovin/impl/g3;->w7:Lcom/applovin/impl/l4;

    .line 482
    .line 483
    const-string v2, "teatfmacc"

    .line 484
    .line 485
    invoke-static {v2, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    sput-object v2, Lcom/applovin/impl/g3;->x7:Lcom/applovin/impl/l4;

    .line 490
    .line 491
    const/4 v2, 0x2

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    const-string v6, "mute_state"

    .line 497
    .line 498
    invoke-static {v6, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    sput-object v2, Lcom/applovin/impl/g3;->y7:Lcom/applovin/impl/l4;

    .line 503
    .line 504
    const-string v2, "saf"

    .line 505
    .line 506
    invoke-static {v2, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    sput-object v2, Lcom/applovin/impl/g3;->z7:Lcom/applovin/impl/l4;

    .line 511
    .line 512
    const-string v2, "saui"

    .line 513
    .line 514
    invoke-static {v2, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    sput-object v1, Lcom/applovin/impl/g3;->A7:Lcom/applovin/impl/l4;

    .line 519
    .line 520
    const-string v1, "malm_v2_e"

    .line 521
    .line 522
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    sput-object v1, Lcom/applovin/impl/g3;->B7:Lcom/applovin/impl/l4;

    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    const-string v2, "mspc"

    .line 534
    .line 535
    invoke-static {v2, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    sput-object v1, Lcom/applovin/impl/g3;->C7:Lcom/applovin/impl/l4;

    .line 540
    .line 541
    const/4 v1, -0x1

    .line 542
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const-string v2, "mra"

    .line 547
    .line 548
    invoke-static {v2, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    sput-object v2, Lcom/applovin/impl/g3;->D7:Lcom/applovin/impl/l4;

    .line 553
    .line 554
    const-string v2, "mra_af"

    .line 555
    .line 556
    const-string v6, "INTER,REWARDED,BANNER,LEADER,MREC"

    .line 557
    .line 558
    invoke-static {v2, v6}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    sput-object v2, Lcom/applovin/impl/g3;->E7:Lcom/applovin/impl/l4;

    .line 563
    .line 564
    const-string v2, "fadiafase"

    .line 565
    .line 566
    invoke-static {v2, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    sput-object v2, Lcom/applovin/impl/g3;->F7:Lcom/applovin/impl/l4;

    .line 571
    .line 572
    const-string v2, "fadwvcv"

    .line 573
    .line 574
    invoke-static {v2, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    sput-object v2, Lcom/applovin/impl/g3;->G7:Lcom/applovin/impl/l4;

    .line 579
    .line 580
    const-string v2, "bfarud"

    .line 581
    .line 582
    invoke-static {v2, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    sput-object v2, Lcom/applovin/impl/g3;->H7:Lcom/applovin/impl/l4;

    .line 587
    .line 588
    const-string v14, "com.jaumo.gay"

    .line 589
    .line 590
    const-string v15, "com.jaumo.lesbian"

    .line 591
    .line 592
    const-string v6, "com.textmeinc.textme"

    .line 593
    .line 594
    const-string v7, "com.textmeinc.freetone"

    .line 595
    .line 596
    const-string v8, "com.textmeinc.textme3"

    .line 597
    .line 598
    const-string v9, "com.jaumo"

    .line 599
    .line 600
    const-string v10, "com.jaumo.casual"

    .line 601
    .line 602
    const-string v11, "com.pinkapp"

    .line 603
    .line 604
    const-string v12, "com.jaumo.mature"

    .line 605
    .line 606
    const-string v13, "com.jaumo.prime"

    .line 607
    .line 608
    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-static {v2}, Lcom/applovin/impl/z6;->b(Ljava/util/List;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    const-string v6, "inacc"

    .line 625
    .line 626
    invoke-static {v6, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    sput-object v2, Lcom/applovin/impl/g3;->I7:Lcom/applovin/impl/l4;

    .line 631
    .line 632
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 633
    .line 634
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 635
    .line 636
    .line 637
    move-result-wide v2

    .line 638
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    const-string v3, "adiets_sec"

    .line 643
    .line 644
    invoke-static {v3, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    sput-object v2, Lcom/applovin/impl/g3;->J7:Lcom/applovin/impl/l4;

    .line 649
    .line 650
    const-string v2, "faomq"

    .line 651
    .line 652
    invoke-static {v2, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    sput-object v2, Lcom/applovin/impl/g3;->K7:Lcom/applovin/impl/l4;

    .line 657
    .line 658
    const-string v2, "rahcnct_sec"

    .line 659
    .line 660
    invoke-static {v2, v1}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    sput-object v1, Lcom/applovin/impl/g3;->L7:Lcom/applovin/impl/l4;

    .line 665
    .line 666
    const-string v1, "uabta"

    .line 667
    .line 668
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    sput-object v1, Lcom/applovin/impl/g3;->M7:Lcom/applovin/impl/l4;

    .line 673
    .line 674
    const-string v1, "use_initialization_spec_during_init"

    .line 675
    .line 676
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    sput-object v1, Lcom/applovin/impl/g3;->N7:Lcom/applovin/impl/l4;

    .line 681
    .line 682
    const-string v1, "report_cimp_after_ierr"

    .line 683
    .line 684
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    sput-object v1, Lcom/applovin/impl/g3;->O7:Lcom/applovin/impl/l4;

    .line 689
    .line 690
    const-string v1, "fail_collection_for_empty_signal"

    .line 691
    .line 692
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    sput-object v1, Lcom/applovin/impl/g3;->P7:Lcom/applovin/impl/l4;

    .line 697
    .line 698
    const-string v1, "fetch_mediated_ad_gzip"

    .line 699
    .line 700
    invoke-static {v1, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    sput-object v1, Lcom/applovin/impl/g3;->Q7:Lcom/applovin/impl/l4;

    .line 705
    .line 706
    const-string v1, "max_postback_gzip"

    .line 707
    .line 708
    invoke-static {v1, v5}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    sput-object v1, Lcom/applovin/impl/g3;->R7:Lcom/applovin/impl/l4;

    .line 713
    .line 714
    const-string v1, "md_endpoint"

    .line 715
    .line 716
    const-string v2, "https://md.applovin.com/"

    .line 717
    .line 718
    invoke-static {v1, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    sput-object v1, Lcom/applovin/impl/g3;->S7:Lcom/applovin/impl/l4;

    .line 723
    .line 724
    const-string v1, "md_backup_endpoint"

    .line 725
    .line 726
    const-string v2, "https://md.applvn.com/"

    .line 727
    .line 728
    invoke-static {v1, v2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    sput-object v1, Lcom/applovin/impl/g3;->T7:Lcom/applovin/impl/l4;

    .line 733
    .line 734
    const-string v1, "md_v2"

    .line 735
    .line 736
    invoke-static {v1, v0}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/l4;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    sput-object v0, Lcom/applovin/impl/g3;->U7:Lcom/applovin/impl/l4;

    .line 741
    .line 742
    return-void
.end method
