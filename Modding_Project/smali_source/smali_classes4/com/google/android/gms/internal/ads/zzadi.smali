.class public final Lcom/google/android/gms/internal/ads/zzadi;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzads;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzadh;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzadh;


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzfyc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzakj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzadi;->zzb:[I

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadh;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzade;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzade;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Lcom/google/android/gms/internal/ads/zzadg;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzadi;->zzc:Lcom/google/android/gms/internal/ads/zzadh;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadh;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadf;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Lcom/google/android/gms/internal/ads/zzadg;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzadi;->zzd:Lcom/google/android/gms/internal/ads/zzadh;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzake;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzake;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Lcom/google/android/gms/internal/ads/zzakj;

    .line 10
    .line 11
    return-void
.end method

.method private final zzb(ILjava/util/List;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    goto :goto_0

    .line 6
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafm;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafz;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafz;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafn;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafn;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaor;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaor;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakc;

    .line 43
    .line 44
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakc;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Lcom/google/android/gms/internal/ads/zzakj;

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaff;

    .line 54
    .line 55
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(ILcom/google/android/gms/internal/ads/zzakj;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadi;->zzd:Lcom/google/android/gms/internal/ads/zzadh;

    .line 63
    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzadh;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzadn;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaga;

    .line 77
    .line 78
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaga;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaom;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaom;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zze:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 95
    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zze:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 103
    .line 104
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Lcom/google/android/gms/internal/ads/zzakj;

    .line 105
    .line 106
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaob;

    .line 107
    .line 108
    new-instance v5, Lcom/google/android/gms/internal/ads/zzer;

    .line 109
    .line 110
    const-wide/16 v2, 0x0

    .line 111
    .line 112
    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(J)V

    .line 113
    .line 114
    .line 115
    new-instance v6, Lcom/google/android/gms/internal/ads/zzamo;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zze:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 118
    .line 119
    invoke-direct {v6, v0, p1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(ILjava/util/List;)V

    .line 120
    .line 121
    .line 122
    const v7, 0x1b8a0

    .line 123
    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaob;-><init>(IILcom/google/android/gms/internal/ads/zzakj;Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaoe;I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanr;

    .line 135
    .line 136
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanr;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajr;

    .line 144
    .line 145
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajr;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Lcom/google/android/gms/internal/ads/zzakj;

    .line 153
    .line 154
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 155
    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzakj;ILcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzajh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaet;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajb;

    .line 171
    .line 172
    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(Lcom/google/android/gms/internal/ads/zzakj;I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahw;

    .line 180
    .line 181
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahw;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Lcom/google/android/gms/internal/ads/zzakj;

    .line 189
    .line 190
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahq;

    .line 191
    .line 192
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lcom/google/android/gms/internal/ads/zzakj;I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafu;

    .line 200
    .line 201
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafu;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadi;->zzc:Lcom/google/android/gms/internal/ads/zzadh;

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const/4 v2, 0x1

    .line 215
    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object v1, v2, v0

    .line 218
    .line 219
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzadh;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzadn;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    if-eqz p1, :cond_2

    .line 224
    .line 225
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafs;

    .line 230
    .line 231
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzafs;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafa;

    .line 239
    .line 240
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzafa;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamm;

    .line 248
    .line 249
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamk;

    .line 257
    .line 258
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamk;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzami;

    .line 266
    .line 267
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzami;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzadn;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v2, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v3, "Content-Type"

    .line 12
    .line 13
    move-object/from16 v4, p2

    .line 14
    .line 15
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/List;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :goto_0
    const/16 v7, 0x11

    .line 43
    .line 44
    const/16 v8, 0x10

    .line 45
    .line 46
    const/4 v9, 0x5

    .line 47
    const/4 v10, 0x7

    .line 48
    const/16 v11, 0x14

    .line 49
    .line 50
    const/16 v12, 0xc

    .line 51
    .line 52
    const/4 v13, 0x6

    .line 53
    const/16 v14, 0xb

    .line 54
    .line 55
    const/16 v15, 0xe

    .line 56
    .line 57
    const/16 v16, 0x13

    .line 58
    .line 59
    const/16 v17, 0x1

    .line 60
    .line 61
    const/16 v18, 0x9

    .line 62
    .line 63
    const/16 v19, 0xd

    .line 64
    .line 65
    const/16 v20, 0xf

    .line 66
    .line 67
    const/16 v21, 0x8

    .line 68
    .line 69
    const/16 v22, 0xa

    .line 70
    .line 71
    const/4 v4, -0x1

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    :goto_1
    move v3, v4

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzay;->zze(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v23

    .line 85
    sparse-switch v23, :sswitch_data_0

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :sswitch_0
    const-string v5, "video/x-matroska"

    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    move/from16 v3, v22

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :sswitch_1
    const-string v5, "audio/webm"

    .line 103
    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    move/from16 v3, v19

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :sswitch_2
    const-string v5, "audio/mpeg"

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    move/from16 v3, v20

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :sswitch_3
    const-string v5, "audio/midi"

    .line 127
    .line 128
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    move/from16 v3, v18

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :sswitch_4
    const-string v5, "audio/flac"

    .line 139
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    move v3, v10

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :sswitch_5
    const-string v5, "audio/eac3"

    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    move/from16 v3, v17

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :sswitch_6
    const-string v5, "audio/3gpp"

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    move v3, v9

    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :sswitch_7
    const-string v5, "video/mp4"

    .line 173
    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    move v3, v8

    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :sswitch_8
    const-string v5, "audio/wav"

    .line 184
    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_3

    .line 190
    .line 191
    const/16 v3, 0x16

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :sswitch_9
    const-string v5, "audio/ogg"

    .line 196
    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_3

    .line 202
    .line 203
    move/from16 v3, v16

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :sswitch_a
    const-string v5, "audio/mp4"

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_3

    .line 214
    .line 215
    move v3, v7

    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :sswitch_b
    const-string v5, "audio/amr"

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_3

    .line 225
    .line 226
    const/4 v3, 0x4

    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :sswitch_c
    const-string v5, "audio/ac4"

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_3

    .line 236
    .line 237
    const/4 v3, 0x3

    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :sswitch_d
    const-string v5, "audio/ac3"

    .line 241
    .line 242
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_3

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    :sswitch_e
    const-string v5, "video/x-flv"

    .line 252
    .line 253
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_3

    .line 258
    .line 259
    move/from16 v3, v21

    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :sswitch_f
    const-string v5, "application/webm"

    .line 264
    .line 265
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_3

    .line 270
    .line 271
    move v3, v15

    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :sswitch_10
    const-string v5, "audio/x-matroska"

    .line 275
    .line 276
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_3

    .line 281
    .line 282
    move v3, v14

    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :sswitch_11
    const-string v5, "image/png"

    .line 286
    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_3

    .line 292
    .line 293
    const/16 v3, 0x1a

    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :sswitch_12
    const-string v5, "image/bmp"

    .line 298
    .line 299
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_3

    .line 304
    .line 305
    const/16 v3, 0x1c

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :sswitch_13
    const-string v5, "text/vtt"

    .line 310
    .line 311
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_3

    .line 316
    .line 317
    const/16 v3, 0x17

    .line 318
    .line 319
    goto/16 :goto_3

    .line 320
    .line 321
    :sswitch_14
    const-string v5, "video/x-msvideo"

    .line 322
    .line 323
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_3

    .line 328
    .line 329
    const/16 v3, 0x19

    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :sswitch_15
    const-string v5, "application/mp4"

    .line 334
    .line 335
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_3

    .line 340
    .line 341
    const/16 v3, 0x12

    .line 342
    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    :sswitch_16
    const-string v5, "image/webp"

    .line 346
    .line 347
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_3

    .line 352
    .line 353
    const/16 v3, 0x1b

    .line 354
    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :sswitch_17
    const-string v5, "image/jpeg"

    .line 358
    .line 359
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_3

    .line 364
    .line 365
    const/16 v3, 0x18

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :sswitch_18
    const-string v5, "image/heif"

    .line 369
    .line 370
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_3

    .line 375
    .line 376
    const/16 v3, 0x1d

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :sswitch_19
    const-string v5, "image/heic"

    .line 380
    .line 381
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_3

    .line 386
    .line 387
    const/16 v3, 0x1e

    .line 388
    .line 389
    goto :goto_3

    .line 390
    :sswitch_1a
    const-string v5, "image/avif"

    .line 391
    .line 392
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_3

    .line 397
    .line 398
    const/16 v3, 0x1f

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :sswitch_1b
    const-string v5, "audio/amr-wb"

    .line 402
    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_3

    .line 408
    .line 409
    move v3, v13

    .line 410
    goto :goto_3

    .line 411
    :sswitch_1c
    const-string v5, "video/webm"

    .line 412
    .line 413
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_3

    .line 418
    .line 419
    move v3, v12

    .line 420
    goto :goto_3

    .line 421
    :sswitch_1d
    const-string v5, "video/mp2t"

    .line 422
    .line 423
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_3

    .line 428
    .line 429
    move v3, v2

    .line 430
    goto :goto_3

    .line 431
    :sswitch_1e
    const-string v5, "video/mp2p"

    .line 432
    .line 433
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-eqz v3, :cond_3

    .line 438
    .line 439
    move v3, v11

    .line 440
    goto :goto_3

    .line 441
    :sswitch_1f
    const-string v5, "audio/eac3-joc"

    .line 442
    .line 443
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_3

    .line 448
    .line 449
    const/4 v3, 0x2

    .line 450
    goto :goto_3

    .line 451
    :cond_3
    :goto_2
    move v3, v4

    .line 452
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 453
    .line 454
    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :pswitch_0
    move v3, v2

    .line 458
    goto :goto_4

    .line 459
    :pswitch_1
    move v3, v11

    .line 460
    goto :goto_4

    .line 461
    :pswitch_2
    move/from16 v3, v16

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :pswitch_3
    const/16 v3, 0x12

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :pswitch_4
    move v3, v7

    .line 468
    goto :goto_4

    .line 469
    :pswitch_5
    move v3, v8

    .line 470
    goto :goto_4

    .line 471
    :pswitch_6
    move v3, v15

    .line 472
    goto :goto_4

    .line 473
    :pswitch_7
    move/from16 v3, v19

    .line 474
    .line 475
    goto :goto_4

    .line 476
    :pswitch_8
    move v3, v12

    .line 477
    goto :goto_4

    .line 478
    :pswitch_9
    move v3, v14

    .line 479
    goto :goto_4

    .line 480
    :pswitch_a
    move/from16 v3, v22

    .line 481
    .line 482
    goto :goto_4

    .line 483
    :pswitch_b
    move/from16 v3, v18

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :pswitch_c
    move/from16 v3, v21

    .line 487
    .line 488
    goto :goto_4

    .line 489
    :pswitch_d
    move v3, v10

    .line 490
    goto :goto_4

    .line 491
    :pswitch_e
    move v3, v13

    .line 492
    goto :goto_4

    .line 493
    :pswitch_f
    move/from16 v3, v20

    .line 494
    .line 495
    goto :goto_4

    .line 496
    :pswitch_10
    move v3, v9

    .line 497
    goto :goto_4

    .line 498
    :pswitch_11
    const/4 v3, 0x4

    .line 499
    goto :goto_4

    .line 500
    :pswitch_12
    const/4 v3, 0x3

    .line 501
    goto :goto_4

    .line 502
    :pswitch_13
    move/from16 v3, v17

    .line 503
    .line 504
    goto :goto_4

    .line 505
    :pswitch_14
    const/4 v3, 0x0

    .line 506
    :goto_4
    if-eq v3, v4, :cond_4

    .line 507
    .line 508
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(ILjava/util/List;)V

    .line 509
    .line 510
    .line 511
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    if-nez v5, :cond_6

    .line 516
    .line 517
    :cond_5
    move v5, v4

    .line 518
    goto/16 :goto_5

    .line 519
    .line 520
    :cond_6
    const-string v6, ".ac3"

    .line 521
    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-nez v6, :cond_7

    .line 527
    .line 528
    const-string v6, ".ec3"

    .line 529
    .line 530
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v6

    .line 534
    if-eqz v6, :cond_8

    .line 535
    .line 536
    :cond_7
    const/4 v5, 0x0

    .line 537
    goto/16 :goto_5

    .line 538
    .line 539
    :cond_8
    const-string v6, ".ac4"

    .line 540
    .line 541
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-eqz v6, :cond_9

    .line 546
    .line 547
    move/from16 v5, v17

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_9
    const-string v6, ".adts"

    .line 552
    .line 553
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-nez v6, :cond_a

    .line 558
    .line 559
    const-string v6, ".aac"

    .line 560
    .line 561
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    if-eqz v6, :cond_b

    .line 566
    .line 567
    :cond_a
    const/4 v5, 0x2

    .line 568
    goto/16 :goto_5

    .line 569
    .line 570
    :cond_b
    const-string v6, ".amr"

    .line 571
    .line 572
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    if-eqz v6, :cond_c

    .line 577
    .line 578
    const/4 v5, 0x3

    .line 579
    goto/16 :goto_5

    .line 580
    .line 581
    :cond_c
    const-string v6, ".flac"

    .line 582
    .line 583
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    if-eqz v6, :cond_d

    .line 588
    .line 589
    const/4 v5, 0x4

    .line 590
    goto/16 :goto_5

    .line 591
    .line 592
    :cond_d
    const-string v6, ".flv"

    .line 593
    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    if-eqz v6, :cond_e

    .line 599
    .line 600
    move v5, v9

    .line 601
    goto/16 :goto_5

    .line 602
    .line 603
    :cond_e
    const-string v6, ".mid"

    .line 604
    .line 605
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    if-nez v6, :cond_f

    .line 610
    .line 611
    const-string v6, ".midi"

    .line 612
    .line 613
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    if-nez v6, :cond_f

    .line 618
    .line 619
    const-string v6, ".smf"

    .line 620
    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-eqz v6, :cond_10

    .line 626
    .line 627
    :cond_f
    move/from16 v5, v20

    .line 628
    .line 629
    goto/16 :goto_5

    .line 630
    .line 631
    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    const-string v9, ".mk"

    .line 636
    .line 637
    add-int/lit8 v6, v6, -0x4

    .line 638
    .line 639
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    if-nez v6, :cond_11

    .line 644
    .line 645
    const-string v6, ".webm"

    .line 646
    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    if-eqz v6, :cond_12

    .line 652
    .line 653
    :cond_11
    move v5, v13

    .line 654
    goto/16 :goto_5

    .line 655
    .line 656
    :cond_12
    const-string v6, ".mp3"

    .line 657
    .line 658
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    if-eqz v6, :cond_13

    .line 663
    .line 664
    move v5, v10

    .line 665
    goto/16 :goto_5

    .line 666
    .line 667
    :cond_13
    const-string v6, ".mp4"

    .line 668
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result v6

    .line 673
    if-nez v6, :cond_14

    .line 674
    .line 675
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    add-int/lit8 v6, v6, -0x4

    .line 680
    .line 681
    const-string v9, ".m4"

    .line 682
    .line 683
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 684
    .line 685
    .line 686
    move-result v6

    .line 687
    if-nez v6, :cond_14

    .line 688
    .line 689
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    const-string v9, ".mp4"

    .line 694
    .line 695
    add-int/lit8 v6, v6, -0x5

    .line 696
    .line 697
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    if-nez v6, :cond_14

    .line 702
    .line 703
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    add-int/lit8 v6, v6, -0x5

    .line 708
    .line 709
    const-string v9, ".cmf"

    .line 710
    .line 711
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 712
    .line 713
    .line 714
    move-result v6

    .line 715
    if-eqz v6, :cond_15

    .line 716
    .line 717
    :cond_14
    move/from16 v5, v21

    .line 718
    .line 719
    goto/16 :goto_5

    .line 720
    .line 721
    :cond_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 722
    .line 723
    .line 724
    move-result v6

    .line 725
    add-int/lit8 v6, v6, -0x4

    .line 726
    .line 727
    const-string v9, ".og"

    .line 728
    .line 729
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 730
    .line 731
    .line 732
    move-result v6

    .line 733
    if-nez v6, :cond_16

    .line 734
    .line 735
    const-string v6, ".opus"

    .line 736
    .line 737
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result v6

    .line 741
    if-eqz v6, :cond_17

    .line 742
    .line 743
    :cond_16
    move/from16 v5, v18

    .line 744
    .line 745
    goto/16 :goto_5

    .line 746
    .line 747
    :cond_17
    const-string v6, ".ps"

    .line 748
    .line 749
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    if-nez v6, :cond_18

    .line 754
    .line 755
    const-string v6, ".mpeg"

    .line 756
    .line 757
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    if-nez v6, :cond_18

    .line 762
    .line 763
    const-string v6, ".mpg"

    .line 764
    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 766
    .line 767
    .line 768
    move-result v6

    .line 769
    if-nez v6, :cond_18

    .line 770
    .line 771
    const-string v6, ".m2p"

    .line 772
    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    if-eqz v6, :cond_19

    .line 778
    .line 779
    :cond_18
    move/from16 v5, v22

    .line 780
    .line 781
    goto/16 :goto_5

    .line 782
    .line 783
    :cond_19
    const-string v6, ".ts"

    .line 784
    .line 785
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v6

    .line 789
    if-nez v6, :cond_1a

    .line 790
    .line 791
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 792
    .line 793
    .line 794
    move-result v6

    .line 795
    add-int/lit8 v6, v6, -0x4

    .line 796
    .line 797
    const-string v9, ".ts"

    .line 798
    .line 799
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 800
    .line 801
    .line 802
    move-result v6

    .line 803
    if-eqz v6, :cond_1b

    .line 804
    .line 805
    :cond_1a
    move v5, v14

    .line 806
    goto/16 :goto_5

    .line 807
    .line 808
    :cond_1b
    const-string v6, ".wav"

    .line 809
    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    if-nez v6, :cond_1c

    .line 815
    .line 816
    const-string v6, ".wave"

    .line 817
    .line 818
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 819
    .line 820
    .line 821
    move-result v6

    .line 822
    if-eqz v6, :cond_1d

    .line 823
    .line 824
    :cond_1c
    move v5, v12

    .line 825
    goto/16 :goto_5

    .line 826
    .line 827
    :cond_1d
    const-string v6, ".vtt"

    .line 828
    .line 829
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    if-nez v6, :cond_1e

    .line 834
    .line 835
    const-string v6, ".webvtt"

    .line 836
    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 838
    .line 839
    .line 840
    move-result v6

    .line 841
    if-eqz v6, :cond_1f

    .line 842
    .line 843
    :cond_1e
    move/from16 v5, v19

    .line 844
    .line 845
    goto/16 :goto_5

    .line 846
    .line 847
    :cond_1f
    const-string v6, ".jpg"

    .line 848
    .line 849
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 850
    .line 851
    .line 852
    move-result v6

    .line 853
    if-nez v6, :cond_20

    .line 854
    .line 855
    const-string v6, ".jpeg"

    .line 856
    .line 857
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 858
    .line 859
    .line 860
    move-result v6

    .line 861
    if-eqz v6, :cond_21

    .line 862
    .line 863
    :cond_20
    move v5, v15

    .line 864
    goto :goto_5

    .line 865
    :cond_21
    const-string v6, ".avi"

    .line 866
    .line 867
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 868
    .line 869
    .line 870
    move-result v6

    .line 871
    if-eqz v6, :cond_22

    .line 872
    .line 873
    move v5, v8

    .line 874
    goto :goto_5

    .line 875
    :cond_22
    const-string v6, ".png"

    .line 876
    .line 877
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 878
    .line 879
    .line 880
    move-result v6

    .line 881
    if-eqz v6, :cond_23

    .line 882
    .line 883
    move v5, v7

    .line 884
    goto :goto_5

    .line 885
    :cond_23
    const-string v6, ".webp"

    .line 886
    .line 887
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 888
    .line 889
    .line 890
    move-result v6

    .line 891
    if-eqz v6, :cond_24

    .line 892
    .line 893
    const/16 v5, 0x12

    .line 894
    .line 895
    goto :goto_5

    .line 896
    :cond_24
    const-string v6, ".bmp"

    .line 897
    .line 898
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 899
    .line 900
    .line 901
    move-result v6

    .line 902
    if-nez v6, :cond_25

    .line 903
    .line 904
    const-string v6, ".dib"

    .line 905
    .line 906
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-eqz v6, :cond_26

    .line 911
    .line 912
    :cond_25
    move/from16 v5, v16

    .line 913
    .line 914
    goto :goto_5

    .line 915
    :cond_26
    const-string v6, ".heic"

    .line 916
    .line 917
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 918
    .line 919
    .line 920
    move-result v6

    .line 921
    if-nez v6, :cond_27

    .line 922
    .line 923
    const-string v6, ".heif"

    .line 924
    .line 925
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    if-eqz v6, :cond_28

    .line 930
    .line 931
    :cond_27
    move v5, v11

    .line 932
    goto :goto_5

    .line 933
    :cond_28
    const-string v6, ".avif"

    .line 934
    .line 935
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    if-eqz v5, :cond_5

    .line 940
    .line 941
    move v5, v2

    .line 942
    :goto_5
    if-eq v5, v4, :cond_29

    .line 943
    .line 944
    if-eq v5, v3, :cond_29

    .line 945
    .line 946
    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(ILjava/util/List;)V

    .line 947
    .line 948
    .line 949
    :cond_29
    sget-object v4, Lcom/google/android/gms/internal/ads/zzadi;->zzb:[I

    .line 950
    .line 951
    const/4 v6, 0x0

    .line 952
    :goto_6
    if-ge v6, v2, :cond_2b

    .line 953
    .line 954
    aget v7, v4, v6

    .line 955
    .line 956
    if-eq v7, v3, :cond_2a

    .line 957
    .line 958
    if-eq v7, v5, :cond_2a

    .line 959
    .line 960
    invoke-direct {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(ILjava/util/List;)V

    .line 961
    .line 962
    .line 963
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    .line 964
    .line 965
    goto :goto_6

    .line 966
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 967
    .line 968
    .line 969
    move-result v2

    .line 970
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzadn;

    .line 971
    .line 972
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    check-cast v0, [Lcom/google/android/gms/internal/ads/zzadn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    .line 978
    monitor-exit p0

    .line 979
    return-object v0

    .line 980
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    throw v0

    .line 982
    nop

    .line 983
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
