.class public Lcom/applovin/impl/q5;
.super Lcom/applovin/impl/w4;
.source "Proguard"


# instance fields
.field private final g:Lcom/applovin/impl/sdk/k;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

    .line 1
    const-string v0, "TaskInitializeSdk"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/impl/w4;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;Z)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/q5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/q5;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/applovin/impl/c;->b()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/f;->a(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/f;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u0()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/f;->a(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lcom/applovin/impl/y1;->i0:Lcom/applovin/impl/y1;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, ":maybeInitializeAdapters()"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/z1;->a(Lcom/applovin/impl/y1;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/applovin/impl/f6;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 71
    .line 72
    new-instance v3, Lcom/applovin/impl/QQOOOOO;

    .line 73
    .line 74
    invoke-direct {v3, p0}, Lcom/applovin/impl/QQOOOOO;-><init>(Lcom/applovin/impl/q5;)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    const-string v5, "initializeAdapters"

    .line 79
    .line 80
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/applovin/impl/f6;-><init>(Lcom/applovin/impl/sdk/k;ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    sget-object v2, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5$b;

    .line 84
    .line 85
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    .line 87
    const-wide/16 v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;J)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->o0()Lcom/applovin/impl/m4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/m4;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->n()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->K()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->f()Lcom/applovin/impl/u$a;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/applovin/impl/u$a;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v3, "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>"

    .line 49
    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v5, "idfv"

    .line 58
    .line 59
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, " (use this for test devices)"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v4, "<Enable verbose logging to see the App Set ID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>"

    .line 77
    .line 78
    :goto_1
    new-instance v5, Lcom/applovin/impl/n2;

    .line 79
    .line 80
    invoke-direct {v5}, Lcom/applovin/impl/n2;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/applovin/impl/n2;->a()Lcom/applovin/impl/n2;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string v7, "=====AppLovin SDK====="

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 90
    .line 91
    .line 92
    const-string v6, "===SDK Versions==="

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    sget-object v7, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 99
    .line 100
    const-string v8, "Version"

    .line 101
    .line 102
    invoke-virtual {v6, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v7, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 107
    .line 108
    sget-object v8, Lcom/applovin/impl/l4;->B3:Lcom/applovin/impl/l4;

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const-string v8, "Plugin Version"

    .line 115
    .line 116
    invoke-virtual {v6, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    const-string v8, "Ad Review Version"

    .line 125
    .line 126
    invoke-virtual {v6, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v7, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/w3;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v7}, Lcom/applovin/impl/w3;->c()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const-string v8, "OM SDK Version"

    .line 141
    .line 142
    invoke-virtual {v6, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 143
    .line 144
    .line 145
    const-string v6, "===Device Info==="

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {}, Lcom/applovin/impl/z6;->d()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    const-string v8, "OS"

    .line 156
    .line 157
    invoke-virtual {v6, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const-string v7, "GAID"

    .line 162
    .line 163
    invoke-virtual {v6, v7, v3}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v6, "App Set ID"

    .line 168
    .line 169
    invoke-virtual {v3, v6, v4}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const-string v4, "model"

    .line 174
    .line 175
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const-string v6, "Model"

    .line 180
    .line 181
    invoke-virtual {v3, v6, v4}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const-string v4, "locale"

    .line 186
    .line 187
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    const-string v6, "Locale"

    .line 192
    .line 193
    invoke-virtual {v3, v6, v4}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const-string v4, "sim"

    .line 198
    .line 199
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    const-string v6, "Emulator"

    .line 204
    .line 205
    invoke-virtual {v3, v6, v4}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const-string v4, "is_tablet"

    .line 210
    .line 211
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v4, "Tablet"

    .line 216
    .line 217
    invoke-virtual {v3, v4, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 218
    .line 219
    .line 220
    const-string v1, "===App Info==="

    .line 221
    .line 222
    invoke-virtual {v5, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v3, "package_name"

    .line 227
    .line 228
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const-string v4, "Application ID"

    .line 233
    .line 234
    invoke-virtual {v1, v4, v3}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v3, "target_sdk"

    .line 239
    .line 240
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v3, "Target SDK"

    .line 245
    .line 246
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 247
    .line 248
    .line 249
    const-string v1, "===SDK Settings==="

    .line 250
    .line 251
    invoke-virtual {v5, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->i0()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-string v3, "SDK Key"

    .line 262
    .line 263
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->V()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const-string v3, "Mediation Provider"

    .line 274
    .line 275
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 280
    .line 281
    invoke-static {v2}, Lcom/applovin/impl/y6;->a(Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string v3, "TG"

    .line 286
    .line 287
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 292
    .line 293
    sget-object v3, Lcom/applovin/impl/l4;->t:Lcom/applovin/impl/l4;

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v3, "MD"

    .line 300
    .line 301
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->s0()Lcom/applovin/impl/s6;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/applovin/impl/s6;->c()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const-string v3, "Test Mode On"

    .line 320
    .line 321
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v2, "Verbose Logging On"

    .line 330
    .line 331
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 332
    .line 333
    .line 334
    const-string v0, "===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies."

    .line 335
    .line 336
    invoke-virtual {v5, v0}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/applovin/impl/w4;->a()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/applovin/impl/l0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 349
    .line 350
    .line 351
    const-string v0, "===MAX Terms and Privcay Policy Flow==="

    .line 352
    .line 353
    invoke-virtual {v5, v0}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/applovin/impl/p0;->j()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    const-string v3, "Enabled"

    .line 371
    .line 372
    invoke-virtual {v5, v3, v2}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 373
    .line 374
    .line 375
    if-eqz v1, :cond_6

    .line 376
    .line 377
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->w()Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;->getConsentFlowUserGeography()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0}, Lcom/applovin/impl/p0;->d()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    sget-object v3, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    .line 392
    .line 393
    const-string v4, "Other"

    .line 394
    .line 395
    const-string v6, "GDPR"

    .line 396
    .line 397
    if-ne v1, v3, :cond_2

    .line 398
    .line 399
    move-object v7, v6

    .line 400
    goto :goto_2

    .line 401
    :cond_2
    sget-object v7, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->OTHER:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    .line 402
    .line 403
    if-ne v1, v7, :cond_3

    .line 404
    .line 405
    move-object v7, v4

    .line 406
    goto :goto_2

    .line 407
    :cond_3
    const-string v7, "Unknown"

    .line 408
    .line 409
    :goto_2
    const-string v8, "Consent Flow Geography"

    .line 410
    .line 411
    invoke-virtual {v5, v8, v7}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 412
    .line 413
    .line 414
    iget-object v7, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 415
    .line 416
    invoke-static {v7}, Lcom/applovin/impl/z6;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-eqz v7, :cond_6

    .line 421
    .line 422
    if-ne v2, v3, :cond_4

    .line 423
    .line 424
    move-object v4, v6

    .line 425
    goto :goto_3

    .line 426
    :cond_4
    sget-object v2, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->OTHER:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    .line 427
    .line 428
    if-ne v1, v2, :cond_5

    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_5
    const-string v4, "None"

    .line 432
    .line 433
    :goto_3
    const-string v1, "Debug User Geography"

    .line 434
    .line 435
    invoke-virtual {v5, v1, v4}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 436
    .line 437
    .line 438
    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/p0;->f()Landroid/net/Uri;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const-string v2, "Privacy Policy URI"

    .line 443
    .line 444
    invoke-virtual {v5, v2, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0}, Lcom/applovin/impl/p0;->h()Landroid/net/Uri;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    const-string v2, "Terms of Service URI"

    .line 453
    .line 454
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/n2;

    .line 455
    .line 456
    .line 457
    const-string v0, "===CMP (CONSENT MANAGEMENT PLATFORM)==="

    .line 458
    .line 459
    invoke-virtual {v5, v0}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/m6;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v1}, Lcom/applovin/impl/m6;->i()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/applovin/impl/n2;->a(Ljava/lang/String;)Lcom/applovin/impl/n2;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5}, Lcom/applovin/impl/n2;->a()Lcom/applovin/impl/n2;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5}, Lcom/applovin/impl/n2;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    const-string v1, "AppLovinSdk"

    .line 484
    .line 485
    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const-string v0, "ms"

    .line 2
    .line 3
    const-string v1, " in "

    .line 4
    .line 5
    const-string v2, "failed"

    .line 6
    .line 7
    const-string v3, "succeeded"

    .line 8
    .line 9
    const-string v4, " initialization "

    .line 10
    .line 11
    const-string v5, "AppLovin SDK "

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    iget-object v8, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 24
    .line 25
    iget-object v9, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v10, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v11, "Initializing AppLovin SDK v"

    .line 33
    .line 34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v11, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v11, "..."

    .line 43
    .line 44
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-virtual {v8, v9, v10}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 55
    .line 56
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {p0}, Lcom/applovin/impl/w4;->a()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/m;->b(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 68
    .line 69
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {p0}, Lcom/applovin/impl/w4;->a()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/m;->e(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 81
    .line 82
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-instance v9, Lcom/applovin/impl/x4;

    .line 87
    .line 88
    iget-object v10, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 89
    .line 90
    invoke-direct {v9, v10}, Lcom/applovin/impl/x4;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 91
    .line 92
    .line 93
    sget-object v10, Lcom/applovin/impl/r5$b;->e:Lcom/applovin/impl/r5$b;

    .line 94
    .line 95
    invoke-virtual {v8, v9, v10}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 96
    .line 97
    .line 98
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/l;->U()V

    .line 105
    .line 106
    .line 107
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->l0()Lcom/applovin/impl/k4;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v8}, Lcom/applovin/impl/k4;->c()V

    .line 114
    .line 115
    .line 116
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 117
    .line 118
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->z()Lcom/applovin/impl/z0;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8}, Lcom/applovin/impl/z0;->l()V

    .line 123
    .line 124
    .line 125
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 126
    .line 127
    invoke-static {v8}, Lcom/applovin/impl/z6;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_1

    .line 132
    .line 133
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 134
    .line 135
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->a()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v8

    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 143
    .line 144
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->Y0()V

    .line 145
    .line 146
    .line 147
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/array/ArrayService;->collectAppHubData()V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Lcom/applovin/impl/q5;->g()V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Lcom/applovin/impl/q5;->f()V

    .line 160
    .line 161
    .line 162
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 163
    .line 164
    const/4 v9, 0x1

    .line 165
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->e0()Lcom/applovin/impl/sdk/network/b;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/network/b;->b()V

    .line 175
    .line 176
    .line 177
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 178
    .line 179
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeFireAppKilledWhilePlayingAdPostback()V

    .line 184
    .line 185
    .line 186
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/EventServiceImpl;->maybeTrackAppOpenEvent()V

    .line 193
    .line 194
    .line 195
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 196
    .line 197
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->A()Lcom/applovin/impl/a1;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v8}, Lcom/applovin/impl/a1;->a()V

    .line 202
    .line 203
    .line 204
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 205
    .line 206
    sget-object v9, Lcom/applovin/impl/l4;->J2:Lcom/applovin/impl/l4;

    .line 207
    .line 208
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_2

    .line 219
    .line 220
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 221
    .line 222
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/x7;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v8}, Lcom/applovin/impl/x7;->b()V

    .line 227
    .line 228
    .line 229
    :cond_2
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 230
    .line 231
    sget-object v9, Lcom/applovin/impl/l4;->T0:Lcom/applovin/impl/l4;

    .line 232
    .line 233
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eqz v8, :cond_3

    .line 244
    .line 245
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 246
    .line 247
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/d;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/d;->b()V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_3
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 256
    .line 257
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/d;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/d;->g()V

    .line 262
    .line 263
    .line 264
    :goto_1
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 265
    .line 266
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->U()Lcom/applovin/impl/f3;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    invoke-virtual {v8}, Lcom/applovin/impl/f3;->g()Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-nez v8, :cond_4

    .line 275
    .line 276
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 277
    .line 278
    sget-object v9, Lcom/applovin/impl/g3;->Q6:Lcom/applovin/impl/l4;

    .line 279
    .line 280
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    check-cast v8, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_5

    .line 291
    .line 292
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 293
    .line 294
    invoke-static {v8}, Lcom/applovin/impl/z6;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-eqz v8, :cond_5

    .line 299
    .line 300
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 301
    .line 302
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->G0()Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-eqz v8, :cond_5

    .line 307
    .line 308
    :cond_4
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 309
    .line 310
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->U()Lcom/applovin/impl/f3;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    invoke-virtual {v8}, Lcom/applovin/impl/f3;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .line 316
    .line 317
    :cond_5
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 318
    .line 319
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    if-eqz v8, :cond_6

    .line 324
    .line 325
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 326
    .line 327
    sget-object v9, Lcom/applovin/impl/l4;->u:Lcom/applovin/impl/l4;

    .line 328
    .line 329
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    check-cast v8, Ljava/lang/String;

    .line 334
    .line 335
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 336
    .line 337
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-virtual {v9, v8}, Lcom/applovin/impl/sdk/r;->b(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_6
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 345
    .line 346
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/w3;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-virtual {v8}, Lcom/applovin/impl/w3;->i()V

    .line 351
    .line 352
    .line 353
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_b

    .line 358
    .line 359
    iget-object v8, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 360
    .line 361
    iget-object v9, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 362
    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v4, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 380
    .line 381
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->B0()Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_a

    .line 386
    .line 387
    goto/16 :goto_4

    .line 388
    .line 389
    :goto_2
    :try_start_1
    const-string v9, "AppLovinSdk"

    .line 390
    .line 391
    const-string v10, "Failed to initialize SDK!"

    .line 392
    .line 393
    invoke-static {v9, v10, v8}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 397
    .line 398
    const/4 v10, 0x0

    .line 399
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/k;->a(Z)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0, v8}, Lcom/applovin/impl/w4;->a(Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 406
    .line 407
    sget-object v9, Lcom/applovin/impl/l4;->i:Lcom/applovin/impl/l4;

    .line 408
    .line 409
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    check-cast v8, Ljava/lang/Boolean;

    .line 414
    .line 415
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    if-eqz v8, :cond_7

    .line 420
    .line 421
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 422
    .line 423
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->e0()Lcom/applovin/impl/sdk/network/b;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/network/b;->a()V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :catchall_1
    move-exception v8

    .line 432
    goto :goto_5

    .line 433
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 434
    .line 435
    sget-object v9, Lcom/applovin/impl/l4;->h:Lcom/applovin/impl/l4;

    .line 436
    .line 437
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    check-cast v8, Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-eqz v8, :cond_8

    .line 448
    .line 449
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 450
    .line 451
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->U0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    .line 453
    .line 454
    :cond_8
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 455
    .line 456
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    if-eqz v8, :cond_9

    .line 461
    .line 462
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 463
    .line 464
    sget-object v9, Lcom/applovin/impl/l4;->u:Lcom/applovin/impl/l4;

    .line 465
    .line 466
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    check-cast v8, Ljava/lang/String;

    .line 471
    .line 472
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 473
    .line 474
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v9, v8}, Lcom/applovin/impl/sdk/r;->b(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_9
    iget-object v8, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 482
    .line 483
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/w3;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-virtual {v8}, Lcom/applovin/impl/w3;->i()V

    .line 488
    .line 489
    .line 490
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-eqz v8, :cond_b

    .line 495
    .line 496
    iget-object v8, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 497
    .line 498
    iget-object v9, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 499
    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 509
    .line 510
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-object v4, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 517
    .line 518
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->B0()Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_a

    .line 523
    .line 524
    :goto_4
    move-object v2, v3

    .line 525
    :cond_a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 532
    .line 533
    .line 534
    move-result-wide v1

    .line 535
    sub-long/2addr v1, v6

    .line 536
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v8, v9, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :cond_b
    return-void

    .line 550
    :goto_5
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 551
    .line 552
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    if-eqz v9, :cond_c

    .line 557
    .line 558
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 559
    .line 560
    sget-object v10, Lcom/applovin/impl/l4;->u:Lcom/applovin/impl/l4;

    .line 561
    .line 562
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    check-cast v9, Ljava/lang/String;

    .line 567
    .line 568
    iget-object v10, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 569
    .line 570
    invoke-virtual {v10}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/r;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/r;->b(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :cond_c
    iget-object v9, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 578
    .line 579
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/w3;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    invoke-virtual {v9}, Lcom/applovin/impl/w3;->i()V

    .line 584
    .line 585
    .line 586
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 587
    .line 588
    .line 589
    move-result v9

    .line 590
    if-eqz v9, :cond_e

    .line 591
    .line 592
    iget-object v9, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 593
    .line 594
    iget-object v10, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 595
    .line 596
    new-instance v11, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    iget-object v4, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/k;

    .line 613
    .line 614
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->B0()Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-eqz v4, :cond_d

    .line 619
    .line 620
    move-object v2, v3

    .line 621
    :cond_d
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 628
    .line 629
    .line 630
    move-result-wide v1

    .line 631
    sub-long/2addr v1, v6

    .line 632
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {v9, v10, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    :cond_e
    throw v8
.end method
