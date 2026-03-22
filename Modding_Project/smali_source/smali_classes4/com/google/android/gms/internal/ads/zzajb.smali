.class public final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;
.implements Lcom/google/android/gms/internal/ads/zzaem;


# instance fields
.field private zzA:J

.field private zzB:I

.field private zzC:Lcom/google/android/gms/internal/ads/zzahe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zza:Lcom/google/android/gms/internal/ads/zzakj;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzek;

.field private final zze:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzajf;

.field private final zzi:Ljava/util/List;

.field private zzj:Lcom/google/android/gms/internal/ads/zzfyc;

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzek;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzx:[Lcom/google/android/gms/internal/ads/zzaja;

.field private zzy:[[J

.field private zzz:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(Lcom/google/android/gms/internal/ads/zzakj;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakj;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzj:Lcom/google/android/gms/internal/ads/zzfyc;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzh:Lcom/google/android/gms/internal/ads/zzajf;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzi:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzf:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zze:Lcom/google/android/gms/internal/ads/zzek;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzadq;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzaja;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    return-void
.end method

.method private static zzj(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x71742020

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzajk;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajk;->zza(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajk;->zzb(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    return v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzajk;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajb;->zzk(Lcom/google/android/gms/internal/ads/zzajk;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzc:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private final zzm()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 5
    .line 6
    return-void
.end method

.method private final zzn(J)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    if-nez v6, :cond_1c

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Lcom/google/android/gms/internal/ads/zzez;

    .line 18
    .line 19
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzez;->zza:J

    .line 20
    .line 21
    cmp-long v6, v6, p1

    .line 22
    .line 23
    if-nez v6, :cond_1c

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    move-object v7, v6

    .line 30
    check-cast v7, Lcom/google/android/gms/internal/ads/zzez;

    .line 31
    .line 32
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    .line 33
    .line 34
    const v8, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v6, v8, :cond_1b

    .line 38
    .line 39
    const v6, 0x6d657461

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaip;->zzb(Lcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzav;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v6, 0x0

    .line 59
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzB:I

    .line 65
    .line 66
    if-ne v9, v4, :cond_1

    .line 67
    .line 68
    move v13, v4

    .line 69
    :goto_2
    move-object v9, v8

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    move v13, v3

    .line 72
    goto :goto_2

    .line 73
    :goto_3
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaeb;

    .line 74
    .line 75
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>()V

    .line 76
    .line 77
    .line 78
    const v10, 0x75647461

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    if-eqz v10, :cond_2

    .line 86
    .line 87
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzaip;->zzc(Lcom/google/android/gms/internal/ads/zzfa;)Lcom/google/android/gms/internal/ads/zzav;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Z

    .line 92
    .line 93
    .line 94
    move-object/from16 v16, v10

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_2
    const/16 v16, 0x0

    .line 98
    .line 99
    :goto_4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 100
    .line 101
    const v11, 0x6d766864

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 112
    .line 113
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaip;->zzd(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzfe;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    new-array v12, v4, [Lcom/google/android/gms/internal/ads/zzau;

    .line 118
    .line 119
    aput-object v11, v12, v3

    .line 120
    .line 121
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-direct {v10, v1, v2, v12}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 127
    .line 128
    .line 129
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 130
    .line 131
    and-int/lit8 v12, v11, 0x1

    .line 132
    .line 133
    if-eq v4, v12, :cond_3

    .line 134
    .line 135
    move v12, v3

    .line 136
    goto :goto_5

    .line 137
    :cond_3
    move v12, v4

    .line 138
    :goto_5
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaiz;

    .line 139
    .line 140
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>()V

    .line 141
    .line 142
    .line 143
    move-object/from16 v19, v9

    .line 144
    .line 145
    move-object/from16 v20, v10

    .line 146
    .line 147
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    move/from16 v21, v11

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    move-object/from16 v22, v19

    .line 156
    .line 157
    invoke-static/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzaip;->zzf(Lcom/google/android/gms/internal/ads/zzez;Lcom/google/android/gms/internal/ads/zzaeb;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfur;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/util/List;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    move-wide v13, v1

    .line 166
    move-wide/from16 v23, v13

    .line 167
    .line 168
    move v11, v3

    .line 169
    move v15, v11

    .line 170
    const/4 v12, -0x1

    .line 171
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-ge v11, v1, :cond_14

    .line 176
    .line 177
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/google/android/gms/internal/ads/zzajk;

    .line 182
    .line 183
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 184
    .line 185
    if-nez v2, :cond_4

    .line 186
    .line 187
    move/from16 v26, v4

    .line 188
    .line 189
    move-object/from16 v28, v7

    .line 190
    .line 191
    move/from16 v27, v15

    .line 192
    .line 193
    move-object/from16 v2, v22

    .line 194
    .line 195
    const/4 v1, -0x1

    .line 196
    move-object v15, v5

    .line 197
    const/4 v5, 0x3

    .line 198
    goto/16 :goto_11

    .line 199
    .line 200
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 201
    .line 202
    move/from16 v25, v3

    .line 203
    .line 204
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaja;

    .line 205
    .line 206
    move/from16 v26, v4

    .line 207
    .line 208
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 209
    .line 210
    add-int/lit8 v27, v15, 0x1

    .line 211
    .line 212
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    .line 213
    .line 214
    invoke-interface {v4, v15, v10}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajk;Lcom/google/android/gms/internal/ads/zzaet;)V

    .line 219
    .line 220
    .line 221
    move-object v15, v5

    .line 222
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzajh;->zze:J

    .line 223
    .line 224
    cmp-long v28, v4, v23

    .line 225
    .line 226
    if-eqz v28, :cond_5

    .line 227
    .line 228
    :goto_7
    move-object/from16 v28, v7

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_5
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzh:J

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :goto_8
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 235
    .line 236
    invoke-interface {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzl(J)V

    .line 237
    .line 238
    .line 239
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 240
    .line 241
    .line 242
    move-result-wide v13

    .line 243
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 244
    .line 245
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 246
    .line 247
    const-string v5, "audio/true-hd"

    .line 248
    .line 249
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_6

    .line 254
    .line 255
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 256
    .line 257
    mul-int/lit8 v1, v1, 0x10

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_6
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 261
    .line 262
    add-int/lit8 v1, v1, 0x1e

    .line 263
    .line 264
    :goto_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 269
    .line 270
    .line 271
    const/4 v1, 0x2

    .line 272
    if-ne v10, v1, :cond_9

    .line 273
    .line 274
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    .line 275
    .line 276
    and-int/lit8 v5, v21, 0x8

    .line 277
    .line 278
    if-eqz v5, :cond_8

    .line 279
    .line 280
    const/4 v5, -0x1

    .line 281
    if-ne v12, v5, :cond_7

    .line 282
    .line 283
    move/from16 v5, v26

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_7
    const/4 v5, 0x2

    .line 287
    :goto_a
    or-int/2addr v1, v5

    .line 288
    :cond_8
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 289
    .line 290
    .line 291
    const/4 v10, 0x2

    .line 292
    :cond_9
    move/from16 v1, v26

    .line 293
    .line 294
    if-ne v10, v1, :cond_a

    .line 295
    .line 296
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_a

    .line 301
    .line 302
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzaeb;->zza:I

    .line 303
    .line 304
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 305
    .line 306
    .line 307
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    .line 308
    .line 309
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 310
    .line 311
    .line 312
    :cond_a
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    .line 313
    .line 314
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzi:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_b

    .line 321
    .line 322
    const/4 v5, 0x0

    .line 323
    :goto_b
    move-object/from16 v29, v1

    .line 324
    .line 325
    const/4 v2, 0x3

    .line 326
    goto :goto_c

    .line 327
    :cond_b
    new-instance v5, Lcom/google/android/gms/internal/ads/zzav;

    .line 328
    .line 329
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    goto :goto_b

    .line 333
    :goto_c
    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzav;

    .line 334
    .line 335
    aput-object v5, v1, v25

    .line 336
    .line 337
    const/16 v26, 0x1

    .line 338
    .line 339
    aput-object v16, v1, v26

    .line 340
    .line 341
    const/16 v18, 0x2

    .line 342
    .line 343
    aput-object v20, v1, v18

    .line 344
    .line 345
    if-eqz v29, :cond_c

    .line 346
    .line 347
    move-object/from16 v30, v29

    .line 348
    .line 349
    move-object/from16 v29, v1

    .line 350
    .line 351
    move-object/from16 v1, v30

    .line 352
    .line 353
    move-wide/from16 v30, v13

    .line 354
    .line 355
    move-wide/from16 v13, v23

    .line 356
    .line 357
    goto :goto_d

    .line 358
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzav;

    .line 359
    .line 360
    move-object/from16 v29, v1

    .line 361
    .line 362
    move/from16 v5, v25

    .line 363
    .line 364
    new-array v1, v5, [Lcom/google/android/gms/internal/ads/zzau;

    .line 365
    .line 366
    move-wide/from16 v30, v13

    .line 367
    .line 368
    move-wide/from16 v13, v23

    .line 369
    .line 370
    invoke-direct {v2, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 371
    .line 372
    .line 373
    move-object v1, v2

    .line 374
    :goto_d
    if-eqz v6, :cond_10

    .line 375
    .line 376
    const/4 v2, 0x0

    .line 377
    :goto_e
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-ge v2, v5, :cond_10

    .line 382
    .line 383
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    instance-of v13, v5, Lcom/google/android/gms/internal/ads/zzex;

    .line 388
    .line 389
    if-eqz v13, :cond_e

    .line 390
    .line 391
    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    .line 392
    .line 393
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 394
    .line 395
    const-string v14, "com.android.capture.fps"

    .line 396
    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    if-eqz v13, :cond_f

    .line 402
    .line 403
    const/4 v13, 0x2

    .line 404
    if-ne v10, v13, :cond_d

    .line 405
    .line 406
    const/4 v13, 0x1

    .line 407
    new-array v14, v13, [Lcom/google/android/gms/internal/ads/zzau;

    .line 408
    .line 409
    const/16 v25, 0x0

    .line 410
    .line 411
    aput-object v5, v14, v25

    .line 412
    .line 413
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    goto :goto_f

    .line 418
    :cond_d
    const/16 v25, 0x0

    .line 419
    .line 420
    :cond_e
    const/4 v13, 0x1

    .line 421
    goto :goto_f

    .line 422
    :cond_f
    const/4 v13, 0x1

    .line 423
    const/16 v25, 0x0

    .line 424
    .line 425
    new-array v14, v13, [Lcom/google/android/gms/internal/ads/zzau;

    .line 426
    .line 427
    aput-object v5, v14, v25

    .line 428
    .line 429
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    :goto_f
    add-int/2addr v2, v13

    .line 434
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_10
    const/4 v13, 0x1

    .line 441
    const/4 v2, 0x0

    .line 442
    const/4 v5, 0x3

    .line 443
    :goto_10
    if-ge v2, v5, :cond_11

    .line 444
    .line 445
    aget-object v14, v29, v2

    .line 446
    .line 447
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    add-int/2addr v2, v13

    .line 452
    goto :goto_10

    .line 453
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-lez v2, :cond_12

    .line 458
    .line 459
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 460
    .line 461
    .line 462
    :cond_12
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 470
    .line 471
    .line 472
    const/4 v13, 0x2

    .line 473
    const/4 v1, -0x1

    .line 474
    if-ne v10, v13, :cond_13

    .line 475
    .line 476
    if-ne v12, v1, :cond_13

    .line 477
    .line 478
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    .line 479
    .line 480
    .line 481
    move-result v12

    .line 482
    :cond_13
    move-object/from16 v2, v22

    .line 483
    .line 484
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-wide/from16 v13, v30

    .line 488
    .line 489
    const/16 v26, 0x1

    .line 490
    .line 491
    :goto_11
    add-int/lit8 v11, v11, 0x1

    .line 492
    .line 493
    move-object/from16 v22, v2

    .line 494
    .line 495
    move-object v5, v15

    .line 496
    move/from16 v15, v27

    .line 497
    .line 498
    move-object/from16 v7, v28

    .line 499
    .line 500
    const/4 v3, 0x0

    .line 501
    const/4 v4, 0x1

    .line 502
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    goto/16 :goto_6

    .line 508
    .line 509
    :cond_14
    move-object v15, v5

    .line 510
    move-object/from16 v2, v22

    .line 511
    .line 512
    const/4 v1, -0x1

    .line 513
    const/4 v5, 0x3

    .line 514
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzz:I

    .line 515
    .line 516
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzA:J

    .line 517
    .line 518
    const/4 v3, 0x0

    .line 519
    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzaja;

    .line 520
    .line 521
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    check-cast v2, [Lcom/google/android/gms/internal/ads/zzaja;

    .line 526
    .line 527
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 528
    .line 529
    array-length v3, v2

    .line 530
    new-array v4, v3, [[J

    .line 531
    .line 532
    new-array v6, v3, [I

    .line 533
    .line 534
    new-array v7, v3, [J

    .line 535
    .line 536
    new-array v3, v3, [Z

    .line 537
    .line 538
    const/4 v8, 0x0

    .line 539
    :goto_12
    array-length v9, v2

    .line 540
    if-ge v8, v9, :cond_15

    .line 541
    .line 542
    aget-object v9, v2, v8

    .line 543
    .line 544
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 545
    .line 546
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 547
    .line 548
    new-array v9, v9, [J

    .line 549
    .line 550
    aput-object v9, v4, v8

    .line 551
    .line 552
    aget-object v9, v2, v8

    .line 553
    .line 554
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 555
    .line 556
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajk;->zzf:[J

    .line 557
    .line 558
    const/16 v25, 0x0

    .line 559
    .line 560
    aget-wide v10, v9, v25

    .line 561
    .line 562
    aput-wide v10, v7, v8

    .line 563
    .line 564
    const/16 v26, 0x1

    .line 565
    .line 566
    add-int/lit8 v8, v8, 0x1

    .line 567
    .line 568
    goto :goto_12

    .line 569
    :cond_15
    const/16 v25, 0x0

    .line 570
    .line 571
    const-wide/16 v8, 0x0

    .line 572
    .line 573
    move-wide v9, v8

    .line 574
    move/from16 v8, v25

    .line 575
    .line 576
    :goto_13
    array-length v11, v2

    .line 577
    if-ge v8, v11, :cond_19

    .line 578
    .line 579
    const-wide v11, 0x7fffffffffffffffL

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    move-wide v13, v11

    .line 585
    move/from16 v11, v25

    .line 586
    .line 587
    move v12, v1

    .line 588
    :goto_14
    array-length v1, v2

    .line 589
    if-ge v11, v1, :cond_17

    .line 590
    .line 591
    aget-boolean v1, v3, v11

    .line 592
    .line 593
    if-nez v1, :cond_16

    .line 594
    .line 595
    aget-wide v16, v7, v11

    .line 596
    .line 597
    cmp-long v1, v16, v13

    .line 598
    .line 599
    if-gtz v1, :cond_16

    .line 600
    .line 601
    move v12, v11

    .line 602
    move-wide/from16 v13, v16

    .line 603
    .line 604
    :cond_16
    const/16 v26, 0x1

    .line 605
    .line 606
    add-int/lit8 v11, v11, 0x1

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_17
    const/16 v26, 0x1

    .line 610
    .line 611
    aget v1, v6, v12

    .line 612
    .line 613
    aget-object v11, v4, v12

    .line 614
    .line 615
    aput-wide v9, v11, v1

    .line 616
    .line 617
    aget-object v13, v2, v12

    .line 618
    .line 619
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 620
    .line 621
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzajk;->zzd:[I

    .line 622
    .line 623
    aget v14, v14, v1

    .line 624
    .line 625
    move-object/from16 v16, v6

    .line 626
    .line 627
    int-to-long v5, v14

    .line 628
    add-long/2addr v9, v5

    .line 629
    add-int/lit8 v1, v1, 0x1

    .line 630
    .line 631
    aput v1, v16, v12

    .line 632
    .line 633
    array-length v5, v11

    .line 634
    if-ge v1, v5, :cond_18

    .line 635
    .line 636
    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzajk;->zzf:[J

    .line 637
    .line 638
    aget-wide v13, v5, v1

    .line 639
    .line 640
    aput-wide v13, v7, v12

    .line 641
    .line 642
    :goto_15
    move-object/from16 v6, v16

    .line 643
    .line 644
    const/4 v1, -0x1

    .line 645
    const/4 v5, 0x3

    .line 646
    goto :goto_13

    .line 647
    :cond_18
    aput-boolean v26, v3, v12

    .line 648
    .line 649
    add-int/lit8 v8, v8, 0x1

    .line 650
    .line 651
    goto :goto_15

    .line 652
    :cond_19
    const/16 v26, 0x1

    .line 653
    .line 654
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzy:[[J

    .line 655
    .line 656
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 657
    .line 658
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 659
    .line 660
    .line 661
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 662
    .line 663
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->clear()V

    .line 667
    .line 668
    .line 669
    const/4 v13, 0x2

    .line 670
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 671
    .line 672
    :cond_1a
    :goto_16
    move/from16 v3, v25

    .line 673
    .line 674
    move/from16 v4, v26

    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :cond_1b
    move/from16 v25, v3

    .line 679
    .line 680
    move/from16 v26, v4

    .line 681
    .line 682
    move-object v15, v5

    .line 683
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-nez v1, :cond_1a

    .line 688
    .line 689
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    check-cast v1, Lcom/google/android/gms/internal/ads/zzez;

    .line 694
    .line 695
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzez;->zzc(Lcom/google/android/gms/internal/ads/zzez;)V

    .line 696
    .line 697
    .line 698
    goto :goto_16

    .line 699
    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 700
    .line 701
    const/4 v13, 0x2

    .line 702
    if-eq v1, v13, :cond_1d

    .line 703
    .line 704
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzm()V

    .line 705
    .line 706
    .line 707
    :cond_1d
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :cond_0
    const/4 v6, 0x1

    .line 8
    :goto_0
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 9
    .line 10
    const v8, 0x66747970

    .line 11
    .line 12
    .line 13
    const-wide/16 v10, 0x0

    .line 14
    .line 15
    const/4 v12, 0x2

    .line 16
    const/4 v13, -0x1

    .line 17
    const/16 v14, 0x8

    .line 18
    .line 19
    if-eqz v7, :cond_29

    .line 20
    .line 21
    if-eq v7, v6, :cond_20

    .line 22
    .line 23
    if-eq v7, v12, :cond_2

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzh:Lcom/google/android/gms/internal/ads/zzajf;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzi:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzajf;->zza(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;Ljava/util/List;)I

    .line 30
    .line 31
    .line 32
    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 33
    .line 34
    cmp-long v1, v1, v10

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzm()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return v6

    .line 42
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzp:I

    .line 47
    .line 48
    if-ne v14, v13, :cond_c

    .line 49
    .line 50
    const-wide v17, 0x7fffffffffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    move/from16 v21, v6

    .line 56
    .line 57
    move/from16 v28, v21

    .line 58
    .line 59
    move/from16 v26, v13

    .line 60
    .line 61
    move/from16 v27, v26

    .line 62
    .line 63
    move-wide/from16 v19, v17

    .line 64
    .line 65
    move-wide/from16 v22, v19

    .line 66
    .line 67
    move-wide/from16 v24, v22

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    const-wide/32 v29, 0x40000

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 74
    .line 75
    move-wide/from16 v31, v10

    .line 76
    .line 77
    array-length v10, v15

    .line 78
    if-ge v14, v10, :cond_a

    .line 79
    .line 80
    aget-object v10, v15, v14

    .line 81
    .line 82
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    .line 83
    .line 84
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 85
    .line 86
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 87
    .line 88
    if-ne v11, v15, :cond_3

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_3
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzajk;->zzc:[J

    .line 92
    .line 93
    aget-wide v15, v10, v11

    .line 94
    .line 95
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzy:[[J

    .line 96
    .line 97
    sget-object v33, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 98
    .line 99
    aget-object v10, v10, v14

    .line 100
    .line 101
    aget-wide v33, v10, v11

    .line 102
    .line 103
    sub-long/2addr v15, v7

    .line 104
    cmp-long v10, v15, v31

    .line 105
    .line 106
    if-ltz v10, :cond_4

    .line 107
    .line 108
    cmp-long v10, v15, v29

    .line 109
    .line 110
    if-ltz v10, :cond_5

    .line 111
    .line 112
    :cond_4
    move v10, v6

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    const/4 v10, 0x0

    .line 115
    :goto_2
    if-nez v10, :cond_6

    .line 116
    .line 117
    if-nez v28, :cond_7

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    move/from16 v11, v28

    .line 122
    .line 123
    :goto_3
    if-ne v10, v11, :cond_8

    .line 124
    .line 125
    cmp-long v28, v15, v24

    .line 126
    .line 127
    if-gez v28, :cond_8

    .line 128
    .line 129
    :cond_7
    move/from16 v28, v10

    .line 130
    .line 131
    move/from16 v27, v14

    .line 132
    .line 133
    move-wide/from16 v24, v15

    .line 134
    .line 135
    move-wide/from16 v22, v33

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_8
    move/from16 v28, v11

    .line 139
    .line 140
    :goto_4
    cmp-long v11, v33, v19

    .line 141
    .line 142
    if-gez v11, :cond_9

    .line 143
    .line 144
    move/from16 v21, v10

    .line 145
    .line 146
    move/from16 v26, v14

    .line 147
    .line 148
    move-wide/from16 v19, v33

    .line 149
    .line 150
    :cond_9
    :goto_5
    add-int/2addr v14, v6

    .line 151
    move-wide/from16 v10, v31

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_a
    cmp-long v10, v19, v17

    .line 155
    .line 156
    if-eqz v10, :cond_b

    .line 157
    .line 158
    if-eqz v21, :cond_b

    .line 159
    .line 160
    const-wide/32 v10, 0xa00000

    .line 161
    .line 162
    .line 163
    add-long v19, v19, v10

    .line 164
    .line 165
    cmp-long v10, v22, v19

    .line 166
    .line 167
    if-ltz v10, :cond_b

    .line 168
    .line 169
    move/from16 v14, v26

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_b
    move/from16 v14, v27

    .line 173
    .line 174
    :goto_6
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzp:I

    .line 175
    .line 176
    if-ne v14, v13, :cond_d

    .line 177
    .line 178
    return v13

    .line 179
    :cond_c
    move-wide/from16 v31, v10

    .line 180
    .line 181
    const-wide/32 v29, 0x40000

    .line 182
    .line 183
    .line 184
    :cond_d
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 185
    .line 186
    aget-object v10, v10, v14

    .line 187
    .line 188
    iget-object v14, v10, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 189
    .line 190
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    .line 191
    .line 192
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 193
    .line 194
    move/from16 v16, v12

    .line 195
    .line 196
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzajk;->zzc:[J

    .line 197
    .line 198
    aget-wide v17, v12, v11

    .line 199
    .line 200
    move-object/from16 v19, v14

    .line 201
    .line 202
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzv:J

    .line 203
    .line 204
    add-long v13, v17, v13

    .line 205
    .line 206
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzajk;->zzd:[I

    .line 207
    .line 208
    aget v17, v12, v11

    .line 209
    .line 210
    move-wide v3, v13

    .line 211
    const/16 v23, 0x0

    .line 212
    .line 213
    iget-object v14, v10, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 214
    .line 215
    sub-long v7, v3, v7

    .line 216
    .line 217
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 218
    .line 219
    const/16 v20, 0x4

    .line 220
    .line 221
    int-to-long v5, v13

    .line 222
    add-long/2addr v7, v5

    .line 223
    cmp-long v5, v7, v31

    .line 224
    .line 225
    if-ltz v5, :cond_e

    .line 226
    .line 227
    cmp-long v5, v7, v29

    .line 228
    .line 229
    if-ltz v5, :cond_f

    .line 230
    .line 231
    :cond_e
    const/16 v24, 0x1

    .line 232
    .line 233
    goto/16 :goto_f

    .line 234
    .line 235
    :cond_f
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzaja;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 236
    .line 237
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzh:I

    .line 238
    .line 239
    const/4 v4, 0x1

    .line 240
    if-ne v3, v4, :cond_10

    .line 241
    .line 242
    const-wide/16 v3, 0x8

    .line 243
    .line 244
    add-long/2addr v7, v3

    .line 245
    add-int/lit8 v17, v17, -0x8

    .line 246
    .line 247
    :cond_10
    move/from16 v3, v17

    .line 248
    .line 249
    long-to-int v4, v7

    .line 250
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 251
    .line 252
    .line 253
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 254
    .line 255
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 256
    .line 257
    const-string v6, "video/avc"

    .line 258
    .line 259
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-nez v6, :cond_11

    .line 264
    .line 265
    const-string v6, "video/hevc"

    .line 266
    .line 267
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    :cond_11
    const/4 v6, 0x1

    .line 271
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 272
    .line 273
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 274
    .line 275
    if-eqz v2, :cond_19

    .line 276
    .line 277
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    aput-byte v23, v7, v23

    .line 284
    .line 285
    aput-byte v23, v7, v6

    .line 286
    .line 287
    aput-byte v23, v7, v16

    .line 288
    .line 289
    rsub-int/lit8 v6, v2, 0x4

    .line 290
    .line 291
    add-int/2addr v3, v6

    .line 292
    :goto_7
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 293
    .line 294
    if-ge v8, v3, :cond_17

    .line 295
    .line 296
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 297
    .line 298
    if-nez v8, :cond_16

    .line 299
    .line 300
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 301
    .line 302
    if-nez v8, :cond_12

    .line 303
    .line 304
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    add-int/2addr v8, v2

    .line 309
    aget v13, v12, v11

    .line 310
    .line 311
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 312
    .line 313
    sub-int/2addr v13, v9

    .line 314
    if-gt v8, v13, :cond_12

    .line 315
    .line 316
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    add-int v9, v2, v8

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_12
    move v9, v2

    .line 324
    move/from16 v8, v23

    .line 325
    .line 326
    :goto_8
    invoke-interface {v1, v7, v6, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 327
    .line 328
    .line 329
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 330
    .line 331
    add-int/2addr v13, v9

    .line 332
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 333
    .line 334
    move/from16 v9, v23

    .line 335
    .line 336
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-ltz v13, :cond_15

    .line 344
    .line 345
    sub-int/2addr v13, v8

    .line 346
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 347
    .line 348
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    .line 349
    .line 350
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 351
    .line 352
    .line 353
    move/from16 v17, v2

    .line 354
    .line 355
    move-object/from16 v9, v19

    .line 356
    .line 357
    move/from16 v2, v20

    .line 358
    .line 359
    invoke-interface {v9, v13, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 360
    .line 361
    .line 362
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 363
    .line 364
    add-int/2addr v13, v2

    .line 365
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 366
    .line 367
    if-lez v8, :cond_14

    .line 368
    .line 369
    invoke-interface {v9, v5, v8}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 370
    .line 371
    .line 372
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 373
    .line 374
    add-int/2addr v13, v8

    .line 375
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 376
    .line 377
    invoke-static {v7, v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    if-eqz v8, :cond_13

    .line 382
    .line 383
    const/4 v2, 0x1

    .line 384
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 385
    .line 386
    :cond_13
    move-object/from16 v19, v9

    .line 387
    .line 388
    :goto_9
    move/from16 v2, v17

    .line 389
    .line 390
    const/16 v20, 0x4

    .line 391
    .line 392
    :goto_a
    const/16 v23, 0x0

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_14
    move/from16 v20, v2

    .line 396
    .line 397
    move-object/from16 v19, v9

    .line 398
    .line 399
    move/from16 v2, v17

    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_15
    const-string v1, "Invalid NAL length"

    .line 403
    .line 404
    const/4 v2, 0x0

    .line 405
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    throw v1

    .line 410
    :cond_16
    move/from16 v17, v2

    .line 411
    .line 412
    move-object/from16 v9, v19

    .line 413
    .line 414
    move/from16 v2, v23

    .line 415
    .line 416
    invoke-interface {v9, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 421
    .line 422
    add-int/2addr v2, v8

    .line 423
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 424
    .line 425
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 426
    .line 427
    add-int/2addr v2, v8

    .line 428
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 429
    .line 430
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 431
    .line 432
    sub-int/2addr v2, v8

    .line 433
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_17
    move-object/from16 v9, v19

    .line 437
    .line 438
    :cond_18
    move/from16 v18, v3

    .line 439
    .line 440
    goto :goto_d

    .line 441
    :cond_19
    move-object/from16 v9, v19

    .line 442
    .line 443
    const-string v2, "audio/ac4"

    .line 444
    .line 445
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    if-eqz v2, :cond_1b

    .line 450
    .line 451
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 452
    .line 453
    if-nez v2, :cond_1a

    .line 454
    .line 455
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zze:Lcom/google/android/gms/internal/ads/zzek;

    .line 456
    .line 457
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzc(ILcom/google/android/gms/internal/ads/zzek;)V

    .line 458
    .line 459
    .line 460
    const/4 v13, 0x7

    .line 461
    invoke-interface {v9, v2, v13}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 462
    .line 463
    .line 464
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 465
    .line 466
    add-int/2addr v2, v13

    .line 467
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_1a
    const/4 v13, 0x7

    .line 471
    :goto_b
    add-int/2addr v3, v13

    .line 472
    goto :goto_c

    .line 473
    :cond_1b
    if-eqz v14, :cond_1c

    .line 474
    .line 475
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzd(Lcom/google/android/gms/internal/ads/zzado;)V

    .line 476
    .line 477
    .line 478
    :cond_1c
    :goto_c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 479
    .line 480
    if-ge v2, v3, :cond_18

    .line 481
    .line 482
    sub-int v2, v3, v2

    .line 483
    .line 484
    const/4 v4, 0x0

    .line 485
    invoke-interface {v9, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 490
    .line 491
    add-int/2addr v4, v2

    .line 492
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 493
    .line 494
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 495
    .line 496
    add-int/2addr v4, v2

    .line 497
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 498
    .line 499
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 500
    .line 501
    sub-int/2addr v4, v2

    .line 502
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :goto_d
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzajk;->zzf:[J

    .line 506
    .line 507
    aget-wide v16, v1, v11

    .line 508
    .line 509
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzajk;->zzg:[I

    .line 510
    .line 511
    aget v1, v1, v11

    .line 512
    .line 513
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 514
    .line 515
    if-nez v2, :cond_1d

    .line 516
    .line 517
    const/high16 v2, 0x4000000

    .line 518
    .line 519
    or-int/2addr v1, v2

    .line 520
    :cond_1d
    if-eqz v14, :cond_1e

    .line 521
    .line 522
    const/16 v20, 0x0

    .line 523
    .line 524
    const/16 v21, 0x0

    .line 525
    .line 526
    move/from16 v19, v18

    .line 527
    .line 528
    move/from16 v18, v1

    .line 529
    .line 530
    move-object v1, v15

    .line 531
    move-object v15, v9

    .line 532
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/internal/ads/zzaeu;->zzc(Lcom/google/android/gms/internal/ads/zzaet;JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 533
    .line 534
    .line 535
    move-object v2, v14

    .line 536
    move-object v14, v15

    .line 537
    const/16 v24, 0x1

    .line 538
    .line 539
    add-int/lit8 v11, v11, 0x1

    .line 540
    .line 541
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 542
    .line 543
    if-ne v11, v1, :cond_1f

    .line 544
    .line 545
    const/4 v1, 0x0

    .line 546
    invoke-virtual {v2, v14, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaes;)V

    .line 547
    .line 548
    .line 549
    goto :goto_e

    .line 550
    :cond_1e
    move-object v14, v9

    .line 551
    move-wide/from16 v15, v16

    .line 552
    .line 553
    const/16 v24, 0x1

    .line 554
    .line 555
    move/from16 v17, v1

    .line 556
    .line 557
    const/16 v19, 0x0

    .line 558
    .line 559
    const/16 v20, 0x0

    .line 560
    .line 561
    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 562
    .line 563
    .line 564
    :cond_1f
    :goto_e
    iget v1, v10, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    .line 565
    .line 566
    add-int/lit8 v1, v1, 0x1

    .line 567
    .line 568
    iput v1, v10, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    .line 569
    .line 570
    const/4 v12, -0x1

    .line 571
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzp:I

    .line 572
    .line 573
    const/4 v2, 0x0

    .line 574
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 575
    .line 576
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 577
    .line 578
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 579
    .line 580
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 581
    .line 582
    return v2

    .line 583
    :goto_f
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 584
    .line 585
    return v24

    .line 586
    :cond_20
    move/from16 v16, v12

    .line 587
    .line 588
    const/4 v13, 0x7

    .line 589
    const-wide/32 v29, 0x40000

    .line 590
    .line 591
    .line 592
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 593
    .line 594
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 595
    .line 596
    int-to-long v5, v5

    .line 597
    sub-long/2addr v3, v5

    .line 598
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 599
    .line 600
    .line 601
    move-result-wide v5

    .line 602
    add-long/2addr v5, v3

    .line 603
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzo:Lcom/google/android/gms/internal/ads/zzek;

    .line 604
    .line 605
    if-eqz v7, :cond_26

    .line 606
    .line 607
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 612
    .line 613
    long-to-int v3, v3

    .line 614
    invoke-interface {v1, v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 615
    .line 616
    .line 617
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 618
    .line 619
    if-ne v3, v8, :cond_25

    .line 620
    .line 621
    const/4 v4, 0x1

    .line 622
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzu:Z

    .line 623
    .line 624
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajb;->zzj(I)I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    if-eqz v3, :cond_21

    .line 636
    .line 637
    goto :goto_10

    .line 638
    :cond_21
    const/4 v3, 0x4

    .line 639
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 640
    .line 641
    .line 642
    :cond_22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    if-lez v3, :cond_23

    .line 647
    .line 648
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajb;->zzj(I)I

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-eqz v3, :cond_22

    .line 657
    .line 658
    goto :goto_10

    .line 659
    :cond_23
    const/4 v3, 0x0

    .line 660
    :goto_10
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzB:I

    .line 661
    .line 662
    :cond_24
    :goto_11
    const/4 v3, 0x0

    .line 663
    goto :goto_12

    .line 664
    :cond_25
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    .line 665
    .line 666
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-nez v4, :cond_24

    .line 671
    .line 672
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, Lcom/google/android/gms/internal/ads/zzez;

    .line 677
    .line 678
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfa;

    .line 679
    .line 680
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 681
    .line 682
    invoke-direct {v4, v8, v7}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(ILcom/google/android/gms/internal/ads/zzek;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 686
    .line 687
    .line 688
    goto :goto_11

    .line 689
    :cond_26
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzu:Z

    .line 690
    .line 691
    if-nez v7, :cond_27

    .line 692
    .line 693
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 694
    .line 695
    const v8, 0x6d646174

    .line 696
    .line 697
    .line 698
    if-ne v7, v8, :cond_27

    .line 699
    .line 700
    const/4 v7, 0x1

    .line 701
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzB:I

    .line 702
    .line 703
    :cond_27
    cmp-long v7, v3, v29

    .line 704
    .line 705
    if-gez v7, :cond_28

    .line 706
    .line 707
    long-to-int v3, v3

    .line 708
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 709
    .line 710
    .line 711
    goto :goto_11

    .line 712
    :cond_28
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 713
    .line 714
    .line 715
    move-result-wide v7

    .line 716
    add-long/2addr v7, v3

    .line 717
    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 718
    .line 719
    const/4 v3, 0x1

    .line 720
    :goto_12
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzajb;->zzn(J)V

    .line 721
    .line 722
    .line 723
    if-eqz v3, :cond_0

    .line 724
    .line 725
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 726
    .line 727
    move/from16 v4, v16

    .line 728
    .line 729
    if-eq v3, v4, :cond_0

    .line 730
    .line 731
    const/4 v6, 0x1

    .line 732
    return v6

    .line 733
    :cond_29
    move-wide/from16 v31, v10

    .line 734
    .line 735
    move v4, v12

    .line 736
    const/4 v13, 0x7

    .line 737
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 738
    .line 739
    if-nez v3, :cond_2d

    .line 740
    .line 741
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzf:Lcom/google/android/gms/internal/ads/zzek;

    .line 742
    .line 743
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    const/4 v9, 0x0

    .line 748
    invoke-interface {v1, v5, v9, v14, v6}, Lcom/google/android/gms/internal/ads/zzado;->zzn([BIIZ)Z

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    if-nez v5, :cond_2c

    .line 753
    .line 754
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzB:I

    .line 755
    .line 756
    if-ne v1, v4, :cond_2b

    .line 757
    .line 758
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 759
    .line 760
    and-int/2addr v1, v4

    .line 761
    if-eqz v1, :cond_2b

    .line 762
    .line 763
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 764
    .line 765
    const/4 v4, 0x4

    .line 766
    invoke-interface {v1, v9, v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzC:Lcom/google/android/gms/internal/ads/zzahe;

    .line 771
    .line 772
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    if-nez v2, :cond_2a

    .line 778
    .line 779
    const/4 v9, 0x0

    .line 780
    goto :goto_13

    .line 781
    :cond_2a
    new-instance v5, Lcom/google/android/gms/internal/ads/zzav;

    .line 782
    .line 783
    const/4 v6, 0x1

    .line 784
    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzau;

    .line 785
    .line 786
    aput-object v2, v6, v9

    .line 787
    .line 788
    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 789
    .line 790
    .line 791
    move-object v9, v5

    .line 792
    :goto_13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 793
    .line 794
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 808
    .line 809
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 810
    .line 811
    .line 812
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 813
    .line 814
    new-instance v2, Lcom/google/android/gms/internal/ads/zzael;

    .line 815
    .line 816
    move-wide/from16 v5, v31

    .line 817
    .line 818
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 819
    .line 820
    .line 821
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 822
    .line 823
    .line 824
    :cond_2b
    const/4 v12, -0x1

    .line 825
    return v12

    .line 826
    :cond_2c
    const/4 v4, 0x4

    .line 827
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 828
    .line 829
    const/4 v9, 0x0

    .line 830
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 834
    .line 835
    .line 836
    move-result-wide v5

    .line 837
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 838
    .line 839
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 844
    .line 845
    goto :goto_14

    .line 846
    :cond_2d
    const/4 v4, 0x4

    .line 847
    :goto_14
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 848
    .line 849
    const-wide/16 v9, 0x1

    .line 850
    .line 851
    cmp-long v3, v5, v9

    .line 852
    .line 853
    if-nez v3, :cond_2e

    .line 854
    .line 855
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzf:Lcom/google/android/gms/internal/ads/zzek;

    .line 856
    .line 857
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    invoke-interface {v1, v5, v14, v14}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 862
    .line 863
    .line 864
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 865
    .line 866
    add-int/2addr v5, v14

    .line 867
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 868
    .line 869
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    .line 870
    .line 871
    .line 872
    move-result-wide v5

    .line 873
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 874
    .line 875
    goto :goto_16

    .line 876
    :cond_2e
    const-wide/16 v31, 0x0

    .line 877
    .line 878
    cmp-long v3, v5, v31

    .line 879
    .line 880
    if-nez v3, :cond_31

    .line 881
    .line 882
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 883
    .line 884
    .line 885
    move-result-wide v5

    .line 886
    const-wide/16 v9, -0x1

    .line 887
    .line 888
    cmp-long v3, v5, v9

    .line 889
    .line 890
    if-nez v3, :cond_30

    .line 891
    .line 892
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    .line 893
    .line 894
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    check-cast v3, Lcom/google/android/gms/internal/ads/zzez;

    .line 899
    .line 900
    if-eqz v3, :cond_2f

    .line 901
    .line 902
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzez;->zza:J

    .line 903
    .line 904
    goto :goto_15

    .line 905
    :cond_2f
    move-wide v5, v9

    .line 906
    :cond_30
    :goto_15
    cmp-long v3, v5, v9

    .line 907
    .line 908
    if-eqz v3, :cond_31

    .line 909
    .line 910
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 911
    .line 912
    .line 913
    move-result-wide v9

    .line 914
    sub-long/2addr v5, v9

    .line 915
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 916
    .line 917
    int-to-long v9, v3

    .line 918
    add-long/2addr v5, v9

    .line 919
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 920
    .line 921
    :cond_31
    :goto_16
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 922
    .line 923
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 924
    .line 925
    int-to-long v9, v3

    .line 926
    cmp-long v5, v5, v9

    .line 927
    .line 928
    if-ltz v5, :cond_3b

    .line 929
    .line 930
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 931
    .line 932
    const v6, 0x6d6f6f76

    .line 933
    .line 934
    .line 935
    const v7, 0x6d657461

    .line 936
    .line 937
    .line 938
    if-eq v5, v6, :cond_32

    .line 939
    .line 940
    const v6, 0x7472616b

    .line 941
    .line 942
    .line 943
    if-eq v5, v6, :cond_32

    .line 944
    .line 945
    const v6, 0x6d646961

    .line 946
    .line 947
    .line 948
    if-eq v5, v6, :cond_32

    .line 949
    .line 950
    const v6, 0x6d696e66

    .line 951
    .line 952
    .line 953
    if-eq v5, v6, :cond_32

    .line 954
    .line 955
    const v6, 0x7374626c

    .line 956
    .line 957
    .line 958
    if-eq v5, v6, :cond_32

    .line 959
    .line 960
    const v6, 0x65647473

    .line 961
    .line 962
    .line 963
    if-eq v5, v6, :cond_32

    .line 964
    .line 965
    if-eq v5, v7, :cond_32

    .line 966
    .line 967
    const v6, 0x61787465

    .line 968
    .line 969
    .line 970
    if-ne v5, v6, :cond_33

    .line 971
    .line 972
    :cond_32
    const/4 v6, 0x1

    .line 973
    goto/16 :goto_1a

    .line 974
    .line 975
    :cond_33
    const v6, 0x6d646864

    .line 976
    .line 977
    .line 978
    if-eq v5, v6, :cond_36

    .line 979
    .line 980
    const v6, 0x6d766864

    .line 981
    .line 982
    .line 983
    if-eq v5, v6, :cond_36

    .line 984
    .line 985
    const v6, 0x68646c72    # 4.3148E24f

    .line 986
    .line 987
    .line 988
    if-eq v5, v6, :cond_36

    .line 989
    .line 990
    const v6, 0x73747364

    .line 991
    .line 992
    .line 993
    if-eq v5, v6, :cond_36

    .line 994
    .line 995
    const v6, 0x73747473

    .line 996
    .line 997
    .line 998
    if-eq v5, v6, :cond_36

    .line 999
    .line 1000
    const v6, 0x73747373

    .line 1001
    .line 1002
    .line 1003
    if-eq v5, v6, :cond_36

    .line 1004
    .line 1005
    const v6, 0x63747473

    .line 1006
    .line 1007
    .line 1008
    if-eq v5, v6, :cond_36

    .line 1009
    .line 1010
    const v6, 0x656c7374

    .line 1011
    .line 1012
    .line 1013
    if-eq v5, v6, :cond_36

    .line 1014
    .line 1015
    const v6, 0x73747363

    .line 1016
    .line 1017
    .line 1018
    if-eq v5, v6, :cond_36

    .line 1019
    .line 1020
    const v6, 0x7374737a

    .line 1021
    .line 1022
    .line 1023
    if-eq v5, v6, :cond_36

    .line 1024
    .line 1025
    const v6, 0x73747a32

    .line 1026
    .line 1027
    .line 1028
    if-eq v5, v6, :cond_36

    .line 1029
    .line 1030
    const v6, 0x7374636f

    .line 1031
    .line 1032
    .line 1033
    if-eq v5, v6, :cond_36

    .line 1034
    .line 1035
    const v6, 0x636f3634

    .line 1036
    .line 1037
    .line 1038
    if-eq v5, v6, :cond_36

    .line 1039
    .line 1040
    const v6, 0x746b6864

    .line 1041
    .line 1042
    .line 1043
    if-eq v5, v6, :cond_36

    .line 1044
    .line 1045
    if-eq v5, v8, :cond_36

    .line 1046
    .line 1047
    const v6, 0x75647461

    .line 1048
    .line 1049
    .line 1050
    if-eq v5, v6, :cond_36

    .line 1051
    .line 1052
    const v6, 0x6b657973

    .line 1053
    .line 1054
    .line 1055
    if-eq v5, v6, :cond_36

    .line 1056
    .line 1057
    const v6, 0x696c7374

    .line 1058
    .line 1059
    .line 1060
    if-ne v5, v6, :cond_34

    .line 1061
    .line 1062
    goto :goto_17

    .line 1063
    :cond_34
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1064
    .line 1065
    .line 1066
    move-result-wide v5

    .line 1067
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 1068
    .line 1069
    int-to-long v7, v3

    .line 1070
    sub-long v29, v5, v7

    .line 1071
    .line 1072
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 1073
    .line 1074
    const v5, 0x6d707664

    .line 1075
    .line 1076
    .line 1077
    if-ne v3, v5, :cond_35

    .line 1078
    .line 1079
    add-long v33, v29, v7

    .line 1080
    .line 1081
    new-instance v26, Lcom/google/android/gms/internal/ads/zzahe;

    .line 1082
    .line 1083
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 1084
    .line 1085
    sub-long v35, v5, v7

    .line 1086
    .line 1087
    const-wide/16 v27, 0x0

    .line 1088
    .line 1089
    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    invoke-direct/range {v26 .. v36}, Lcom/google/android/gms/internal/ads/zzahe;-><init>(JJJJJ)V

    .line 1095
    .line 1096
    .line 1097
    move-object/from16 v3, v26

    .line 1098
    .line 1099
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzC:Lcom/google/android/gms/internal/ads/zzahe;

    .line 1100
    .line 1101
    :cond_35
    const/4 v3, 0x0

    .line 1102
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzo:Lcom/google/android/gms/internal/ads/zzek;

    .line 1103
    .line 1104
    const/4 v6, 0x1

    .line 1105
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 1106
    .line 1107
    goto/16 :goto_0

    .line 1108
    .line 1109
    :cond_36
    :goto_17
    if-ne v3, v14, :cond_37

    .line 1110
    .line 1111
    const/4 v3, 0x1

    .line 1112
    goto :goto_18

    .line 1113
    :cond_37
    const/4 v3, 0x0

    .line 1114
    :goto_18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 1115
    .line 1116
    .line 1117
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 1118
    .line 1119
    const-wide/32 v7, 0x7fffffff

    .line 1120
    .line 1121
    .line 1122
    cmp-long v3, v5, v7

    .line 1123
    .line 1124
    if-gtz v3, :cond_38

    .line 1125
    .line 1126
    const/4 v3, 0x1

    .line 1127
    goto :goto_19

    .line 1128
    :cond_38
    const/4 v3, 0x0

    .line 1129
    :goto_19
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 1130
    .line 1131
    .line 1132
    new-instance v3, Lcom/google/android/gms/internal/ads/zzek;

    .line 1133
    .line 1134
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 1135
    .line 1136
    long-to-int v5, v5

    .line 1137
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzf:Lcom/google/android/gms/internal/ads/zzek;

    .line 1141
    .line 1142
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1143
    .line 1144
    .line 1145
    move-result-object v5

    .line 1146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1147
    .line 1148
    .line 1149
    move-result-object v6

    .line 1150
    const/4 v9, 0x0

    .line 1151
    invoke-static {v5, v9, v6, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    .line 1153
    .line 1154
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzo:Lcom/google/android/gms/internal/ads/zzek;

    .line 1155
    .line 1156
    const/4 v6, 0x1

    .line 1157
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 1158
    .line 1159
    goto/16 :goto_0

    .line 1160
    .line 1161
    :goto_1a
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1162
    .line 1163
    .line 1164
    move-result-wide v8

    .line 1165
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 1166
    .line 1167
    add-long/2addr v8, v10

    .line 1168
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 1169
    .line 1170
    int-to-long v4, v3

    .line 1171
    cmp-long v3, v10, v4

    .line 1172
    .line 1173
    if-eqz v3, :cond_39

    .line 1174
    .line 1175
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 1176
    .line 1177
    if-ne v3, v7, :cond_39

    .line 1178
    .line 1179
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zze:Lcom/google/android/gms/internal/ads/zzek;

    .line 1180
    .line 1181
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1185
    .line 1186
    .line 1187
    move-result-object v7

    .line 1188
    const/4 v10, 0x0

    .line 1189
    invoke-interface {v1, v7, v10, v14}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaip;->zzg(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 1196
    .line 1197
    .line 1198
    move-result v3

    .line 1199
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 1200
    .line 1201
    .line 1202
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_1b

    .line 1206
    :cond_39
    const/4 v10, 0x0

    .line 1207
    :goto_1b
    sub-long/2addr v8, v4

    .line 1208
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    .line 1209
    .line 1210
    new-instance v4, Lcom/google/android/gms/internal/ads/zzez;

    .line 1211
    .line 1212
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzl:I

    .line 1213
    .line 1214
    invoke-direct {v4, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzez;-><init>(IJ)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1218
    .line 1219
    .line 1220
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzm:J

    .line 1221
    .line 1222
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 1223
    .line 1224
    int-to-long v11, v5

    .line 1225
    cmp-long v3, v3, v11

    .line 1226
    .line 1227
    if-nez v3, :cond_3a

    .line 1228
    .line 1229
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzajb;->zzn(J)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_0

    .line 1233
    .line 1234
    :cond_3a
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzm()V

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_0

    .line 1238
    .line 1239
    :cond_3b
    const-string v1, "Atom size less than header length (unsupported)."

    .line 1240
    .line 1241
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzj:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakm;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzakj;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzw:Lcom/google/android/gms/internal/ads/zzadq;

    .line 16
    .line 17
    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzn:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzp:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzq:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzr:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzs:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzt:Z

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long p1, p1, v2

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajb;->zzm()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzh:Lcom/google/android/gms/internal/ads/zzajf;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajf;->zzb()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzi:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 47
    .line 48
    array-length p2, p1

    .line 49
    :goto_0
    if-ge v0, p2, :cond_4

    .line 50
    .line 51
    aget-object v2, p1, v0

    .line 52
    .line 53
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 54
    .line 55
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajk;->zza(J)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ne v4, v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajk;->zzb(J)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    .line 66
    .line 67
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzb()V

    .line 72
    .line 73
    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaek;

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzaen;

    .line 13
    .line 14
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzaen;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzz:I

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    if-eq v4, v5, :cond_3

    .line 27
    .line 28
    aget-object v3, v3, v4

    .line 29
    .line 30
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 31
    .line 32
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzk(Lcom/google/android/gms/internal/ads/zzajk;J)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v4, v5, :cond_1

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaek;

    .line 39
    .line 40
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzaen;

    .line 41
    .line 42
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzaen;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_1
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajk;->zzf:[J

    .line 47
    .line 48
    aget-wide v11, v10, v4

    .line 49
    .line 50
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzajk;->zzc:[J

    .line 51
    .line 52
    aget-wide v14, v13, v4

    .line 53
    .line 54
    cmp-long v16, v11, v1

    .line 55
    .line 56
    if-gez v16, :cond_2

    .line 57
    .line 58
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 59
    .line 60
    add-int/2addr v6, v5

    .line 61
    if-ge v4, v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajk;->zzb(J)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eq v1, v5, :cond_2

    .line 68
    .line 69
    if-eq v1, v4, :cond_2

    .line 70
    .line 71
    aget-wide v2, v10, v1

    .line 72
    .line 73
    aget-wide v6, v13, v1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-wide v2, v8

    .line 77
    const-wide/16 v6, -0x1

    .line 78
    .line 79
    :goto_0
    move-wide v3, v2

    .line 80
    move-wide v1, v11

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    move-wide v3, v8

    .line 88
    const-wide/16 v6, -0x1

    .line 89
    .line 90
    :goto_1
    const/4 v5, 0x0

    .line 91
    :goto_2
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzx:[Lcom/google/android/gms/internal/ads/zzaja;

    .line 92
    .line 93
    array-length v11, v10

    .line 94
    if-ge v5, v11, :cond_6

    .line 95
    .line 96
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajb;->zzz:I

    .line 97
    .line 98
    if-eq v5, v11, :cond_5

    .line 99
    .line 100
    aget-object v10, v10, v5

    .line 101
    .line 102
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Lcom/google/android/gms/internal/ads/zzajk;

    .line 103
    .line 104
    invoke-static {v10, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzajb;->zzl(Lcom/google/android/gms/internal/ads/zzajk;JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    cmp-long v13, v3, v8

    .line 109
    .line 110
    if-eqz v13, :cond_4

    .line 111
    .line 112
    invoke-static {v10, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zzl(Lcom/google/android/gms/internal/ads/zzajk;JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    :cond_4
    move-wide v14, v11

    .line 117
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaen;

    .line 121
    .line 122
    invoke-direct {v5, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(JJ)V

    .line 123
    .line 124
    .line 125
    cmp-long v1, v3, v8

    .line 126
    .line 127
    if-nez v1, :cond_7

    .line 128
    .line 129
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaek;

    .line 130
    .line 131
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzaen;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaen;

    .line 136
    .line 137
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(JJ)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaek;

    .line 141
    .line 142
    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzaen;)V

    .line 143
    .line 144
    .line 145
    return-object v2
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzajg;->zzb(Lcom/google/android/gms/internal/ads/zzado;Z)Lcom/google/android/gms/internal/ads/zzaeq;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzj:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    return v1
.end method
