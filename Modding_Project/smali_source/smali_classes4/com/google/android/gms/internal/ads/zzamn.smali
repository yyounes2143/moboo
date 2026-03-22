.class public final Lcom/google/android/gms/internal/ads/zzamn;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamr;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzej;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzek;

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamn;->zza:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzej;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzamn;->zza:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzp:I

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzt:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:Z

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zze:Ljava/lang/String;

    .line 46
    .line 47
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzf:I

    .line 48
    .line 49
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamn;->zzh()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    .line 1
    const v0, 0xfff6

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    const v0, 0xfff0

    .line 6
    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private final zzg()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzo:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamn;->zzh()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 5
    .line 6
    const/16 v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzm:I

    .line 9
    .line 10
    return-void
.end method

.method private final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 6
    .line 7
    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzaet;JII)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzw:Lcom/google/android/gms/internal/ads/zzaet;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzx:J

    .line 9
    .line 10
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzu:I

    .line 11
    .line 12
    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private static final zzl(BB)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p1, 0xff

    .line 2
    .line 3
    const p1, 0xff00

    .line 4
    .line 5
    .line 6
    or-int/2addr p0, p1

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamn;->zzf(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge v0, p2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, -0x1

    .line 7
    const/4 v9, 0x2

    .line 8
    const/4 v10, 0x1

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzi:Lcom/google/android/gms/internal/ads/zzaet;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1f

    .line 21
    .line 22
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 23
    .line 24
    const/16 v2, 0xd

    .line 25
    .line 26
    const/4 v3, 0x7

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x3

    .line 29
    if-eqz v1, :cond_b

    .line 30
    .line 31
    if-eq v1, v10, :cond_8

    .line 32
    .line 33
    const/16 v11, 0xa

    .line 34
    .line 35
    if-eq v1, v9, :cond_7

    .line 36
    .line 37
    if-eq v1, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzu:I

    .line 44
    .line 45
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 46
    .line 47
    sub-int/2addr v2, v3

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzw:Lcom/google/android/gms/internal/ads/zzaet;

    .line 53
    .line 54
    invoke-interface {v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 55
    .line 56
    .line 57
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 58
    .line 59
    add-int/2addr v2, v1

    .line 60
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 61
    .line 62
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzu:I

    .line 63
    .line 64
    if-ne v2, v1, :cond_0

    .line 65
    .line 66
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 67
    .line 68
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v1, v1, v3

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    move v1, v10

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v1, v7

    .line 80
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzw:Lcom/google/android/gms/internal/ads/zzaet;

    .line 84
    .line 85
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 86
    .line 87
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzu:I

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/4 v14, 0x1

    .line 94
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 95
    .line 96
    .line 97
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 98
    .line 99
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzx:J

    .line 100
    .line 101
    add-long/2addr v1, v3

    .line 102
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzh()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzn:Z

    .line 109
    .line 110
    const/4 v12, 0x5

    .line 111
    if-eq v10, v1, :cond_3

    .line 112
    .line 113
    move v1, v12

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v1, v3

    .line 116
    :goto_2
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    .line 117
    .line 118
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 119
    .line 120
    invoke-direct {v0, v6, v14, v1}, Lcom/google/android/gms/internal/ads/zzamn;->zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    .line 126
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 127
    .line 128
    .line 129
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzs:Z

    .line 130
    .line 131
    if-nez v1, :cond_5

    .line 132
    .line 133
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v1, v10

    .line 138
    if-eq v1, v9, :cond_4

    .line 139
    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v14, "Detected audio object type: "

    .line 146
    .line 147
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", but assuming AAC LC."

    .line 154
    .line 155
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v11, "AdtsReader"

    .line 163
    .line 164
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 175
    .line 176
    shr-int/lit8 v12, v11, 0x1

    .line 177
    .line 178
    and-int/2addr v12, v3

    .line 179
    or-int/lit8 v12, v12, 0x10

    .line 180
    .line 181
    int-to-byte v12, v12

    .line 182
    shl-int/lit8 v3, v11, 0x7

    .line 183
    .line 184
    shl-int/2addr v1, v5

    .line 185
    and-int/lit16 v3, v3, 0x80

    .line 186
    .line 187
    and-int/lit8 v1, v1, 0x78

    .line 188
    .line 189
    or-int/2addr v1, v3

    .line 190
    int-to-byte v1, v1

    .line 191
    new-array v3, v9, [B

    .line 192
    .line 193
    aput-byte v12, v3, v7

    .line 194
    .line 195
    aput-byte v1, v3, v10

    .line 196
    .line 197
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzack;->zza([B)Lcom/google/android/gms/internal/ads/zzaci;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 202
    .line 203
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 204
    .line 205
    .line 206
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzh:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 209
    .line 210
    .line 211
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzg:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 214
    .line 215
    .line 216
    const-string v11, "audio/mp4a-latm"

    .line 217
    .line 218
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 219
    .line 220
    .line 221
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaci;->zzc:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 224
    .line 225
    .line 226
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaci;->zzb:I

    .line 227
    .line 228
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 229
    .line 230
    .line 231
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaci;->zza:I

    .line 232
    .line 233
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zze:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 246
    .line 247
    .line 248
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzf:I

    .line 249
    .line 250
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 258
    .line 259
    int-to-long v11, v3

    .line 260
    const-wide/32 v14, 0x3d090000

    .line 261
    .line 262
    .line 263
    div-long/2addr v14, v11

    .line 264
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzt:J

    .line 265
    .line 266
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzi:Lcom/google/android/gms/internal/ads/zzaet;

    .line 267
    .line 268
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 269
    .line 270
    .line 271
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzs:Z

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_5
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 275
    .line 276
    .line 277
    :goto_3
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    add-int/lit8 v2, v1, -0x7

    .line 285
    .line 286
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzn:Z

    .line 287
    .line 288
    if-eqz v3, :cond_6

    .line 289
    .line 290
    add-int/lit8 v2, v1, -0x9

    .line 291
    .line 292
    :cond_6
    move v5, v2

    .line 293
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzi:Lcom/google/android/gms/internal/ads/zzaet;

    .line 294
    .line 295
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzt:J

    .line 296
    .line 297
    const/4 v4, 0x0

    .line 298
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamn;->zzj(Lcom/google/android/gms/internal/ads/zzaet;JII)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-direct {v0, v6, v2, v11}, Lcom/google/android/gms/internal/ads/zzamn;->zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_0

    .line 314
    .line 315
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzj:Lcom/google/android/gms/internal/ads/zzaet;

    .line 316
    .line 317
    invoke-interface {v2, v1, v11}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 318
    .line 319
    .line 320
    const/4 v2, 0x6

    .line 321
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 322
    .line 323
    .line 324
    move-object v2, v1

    .line 325
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzj:Lcom/google/android/gms/internal/ads/zzaet;

    .line 326
    .line 327
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzl()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    const/16 v4, 0xa

    .line 332
    .line 333
    add-int/lit8 v5, v2, 0xa

    .line 334
    .line 335
    const-wide/16 v2, 0x0

    .line 336
    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamn;->zzj(Lcom/google/android/gms/internal/ads/zzaet;JII)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_0

    .line 347
    .line 348
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    .line 349
    .line 350
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 351
    .line 352
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    aget-byte v3, v3, v5

    .line 361
    .line 362
    aput-byte v3, v2, v7

    .line 363
    .line 364
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 372
    .line 373
    if-eq v2, v8, :cond_9

    .line 374
    .line 375
    if-eq v1, v2, :cond_9

    .line 376
    .line 377
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzg()V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_9
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzo:Z

    .line 383
    .line 384
    if-nez v2, :cond_a

    .line 385
    .line 386
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzo:Z

    .line 387
    .line 388
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzr:I

    .line 389
    .line 390
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzp:I

    .line 391
    .line 392
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 393
    .line 394
    :cond_a
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzi()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    :goto_4
    if-ge v11, v12, :cond_1e

    .line 412
    .line 413
    add-int/lit8 v13, v11, 0x1

    .line 414
    .line 415
    aget-byte v14, v1, v11

    .line 416
    .line 417
    and-int/lit16 v15, v14, 0xff

    .line 418
    .line 419
    move/from16 v16, v5

    .line 420
    .line 421
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzm:I

    .line 422
    .line 423
    const/16 v7, 0x200

    .line 424
    .line 425
    if-ne v5, v7, :cond_17

    .line 426
    .line 427
    int-to-byte v5, v15

    .line 428
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/ads/zzamn;->zzl(BB)Z

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    if-eqz v5, :cond_17

    .line 433
    .line 434
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzo:Z

    .line 435
    .line 436
    if-nez v5, :cond_10

    .line 437
    .line 438
    add-int/lit8 v5, v11, -0x1

    .line 439
    .line 440
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 441
    .line 442
    .line 443
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    .line 444
    .line 445
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 446
    .line 447
    invoke-static {v6, v3, v10}, Lcom/google/android/gms/internal/ads/zzamn;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-nez v3, :cond_e

    .line 452
    .line 453
    :cond_c
    move/from16 v19, v9

    .line 454
    .line 455
    :cond_d
    const/4 v9, 0x7

    .line 456
    goto/16 :goto_9

    .line 457
    .line 458
    :cond_e
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzp:I

    .line 466
    .line 467
    if-eq v2, v8, :cond_f

    .line 468
    .line 469
    if-ne v3, v2, :cond_c

    .line 470
    .line 471
    :cond_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 472
    .line 473
    if-eq v2, v8, :cond_12

    .line 474
    .line 475
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 476
    .line 477
    invoke-static {v6, v2, v10}, Lcom/google/android/gms/internal/ads/zzamn;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-nez v2, :cond_11

    .line 482
    .line 483
    :cond_10
    move/from16 v19, v9

    .line 484
    .line 485
    goto :goto_6

    .line 486
    :cond_11
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    move/from16 v19, v9

    .line 494
    .line 495
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzq:I

    .line 496
    .line 497
    if-ne v2, v9, :cond_d

    .line 498
    .line 499
    add-int/lit8 v2, v11, 0x1

    .line 500
    .line 501
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 502
    .line 503
    .line 504
    goto :goto_5

    .line 505
    :cond_12
    move/from16 v19, v9

    .line 506
    .line 507
    :goto_5
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 508
    .line 509
    invoke-static {v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzamn;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_14

    .line 514
    .line 515
    const/16 v2, 0xe

    .line 516
    .line 517
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 518
    .line 519
    .line 520
    const/16 v2, 0xd

    .line 521
    .line 522
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    const/4 v9, 0x7

    .line 527
    if-lt v7, v9, :cond_18

    .line 528
    .line 529
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 530
    .line 531
    .line 532
    move-result-object v18

    .line 533
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    add-int/2addr v5, v7

    .line 538
    if-ge v5, v2, :cond_14

    .line 539
    .line 540
    aget-byte v7, v18, v5

    .line 541
    .line 542
    if-ne v7, v8, :cond_13

    .line 543
    .line 544
    add-int/2addr v5, v10

    .line 545
    if-eq v5, v2, :cond_14

    .line 546
    .line 547
    aget-byte v2, v18, v5

    .line 548
    .line 549
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzamn;->zzl(BB)Z

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-eqz v5, :cond_18

    .line 554
    .line 555
    and-int/lit8 v2, v2, 0x8

    .line 556
    .line 557
    shr-int/lit8 v2, v2, 0x3

    .line 558
    .line 559
    if-ne v2, v3, :cond_18

    .line 560
    .line 561
    goto :goto_6

    .line 562
    :cond_13
    const/16 v3, 0x49

    .line 563
    .line 564
    if-ne v7, v3, :cond_18

    .line 565
    .line 566
    add-int/lit8 v3, v5, 0x1

    .line 567
    .line 568
    if-eq v3, v2, :cond_14

    .line 569
    .line 570
    aget-byte v3, v18, v3

    .line 571
    .line 572
    const/16 v7, 0x44

    .line 573
    .line 574
    if-ne v3, v7, :cond_18

    .line 575
    .line 576
    add-int/lit8 v5, v5, 0x2

    .line 577
    .line 578
    if-eq v5, v2, :cond_14

    .line 579
    .line 580
    aget-byte v2, v18, v5

    .line 581
    .line 582
    const/16 v3, 0x33

    .line 583
    .line 584
    if-ne v2, v3, :cond_18

    .line 585
    .line 586
    :cond_14
    :goto_6
    and-int/lit8 v1, v14, 0x8

    .line 587
    .line 588
    shr-int/lit8 v1, v1, 0x3

    .line 589
    .line 590
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzr:I

    .line 591
    .line 592
    and-int/lit8 v1, v14, 0x1

    .line 593
    .line 594
    xor-int/2addr v1, v10

    .line 595
    if-eq v10, v1, :cond_15

    .line 596
    .line 597
    const/4 v1, 0x0

    .line 598
    goto :goto_7

    .line 599
    :cond_15
    move v1, v10

    .line 600
    :goto_7
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzn:Z

    .line 601
    .line 602
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzo:Z

    .line 603
    .line 604
    if-nez v1, :cond_16

    .line 605
    .line 606
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 607
    .line 608
    const/4 v1, 0x0

    .line 609
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 610
    .line 611
    goto :goto_8

    .line 612
    :cond_16
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzi()V

    .line 613
    .line 614
    .line 615
    :goto_8
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 616
    .line 617
    .line 618
    move/from16 v9, v19

    .line 619
    .line 620
    const/4 v7, 0x0

    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :cond_17
    move/from16 v19, v9

    .line 624
    .line 625
    move v9, v3

    .line 626
    :cond_18
    :goto_9
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzm:I

    .line 627
    .line 628
    or-int v3, v2, v15

    .line 629
    .line 630
    const/16 v5, 0x149

    .line 631
    .line 632
    if-eq v3, v5, :cond_1d

    .line 633
    .line 634
    const/16 v5, 0x1ff

    .line 635
    .line 636
    if-eq v3, v5, :cond_1c

    .line 637
    .line 638
    const/16 v5, 0x344

    .line 639
    .line 640
    if-eq v3, v5, :cond_1b

    .line 641
    .line 642
    const/16 v5, 0x433

    .line 643
    .line 644
    if-eq v3, v5, :cond_1a

    .line 645
    .line 646
    const/16 v3, 0x100

    .line 647
    .line 648
    if-eq v2, v3, :cond_19

    .line 649
    .line 650
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzm:I

    .line 651
    .line 652
    move v3, v9

    .line 653
    move/from16 v5, v16

    .line 654
    .line 655
    move/from16 v9, v19

    .line 656
    .line 657
    const/16 v2, 0xd

    .line 658
    .line 659
    const/4 v7, 0x0

    .line 660
    goto/16 :goto_4

    .line 661
    .line 662
    :cond_19
    move/from16 v3, v16

    .line 663
    .line 664
    move/from16 v2, v19

    .line 665
    .line 666
    const/4 v5, 0x0

    .line 667
    goto :goto_b

    .line 668
    :cond_1a
    move/from16 v2, v19

    .line 669
    .line 670
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzk:I

    .line 671
    .line 672
    move/from16 v3, v16

    .line 673
    .line 674
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzl:I

    .line 675
    .line 676
    const/4 v5, 0x0

    .line 677
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzu:I

    .line 678
    .line 679
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 680
    .line 681
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 685
    .line 686
    .line 687
    move v9, v2

    .line 688
    move v7, v5

    .line 689
    goto/16 :goto_0

    .line 690
    .line 691
    :cond_1b
    move/from16 v3, v16

    .line 692
    .line 693
    move/from16 v2, v19

    .line 694
    .line 695
    const/4 v5, 0x0

    .line 696
    const/16 v7, 0x400

    .line 697
    .line 698
    :goto_a
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamn;->zzm:I

    .line 699
    .line 700
    goto :goto_b

    .line 701
    :cond_1c
    move/from16 v3, v16

    .line 702
    .line 703
    move/from16 v2, v19

    .line 704
    .line 705
    const/4 v5, 0x0

    .line 706
    const/16 v7, 0x200

    .line 707
    .line 708
    goto :goto_a

    .line 709
    :cond_1d
    move/from16 v3, v16

    .line 710
    .line 711
    move/from16 v2, v19

    .line 712
    .line 713
    const/4 v5, 0x0

    .line 714
    const/16 v7, 0x300

    .line 715
    .line 716
    goto :goto_a

    .line 717
    :goto_b
    move v7, v5

    .line 718
    move v11, v13

    .line 719
    move v5, v3

    .line 720
    move v3, v9

    .line 721
    move v9, v2

    .line 722
    const/16 v2, 0xd

    .line 723
    .line 724
    goto/16 :goto_4

    .line 725
    .line 726
    :cond_1e
    move v5, v7

    .line 727
    move v2, v9

    .line 728
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :cond_1f
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzi:Lcom/google/android/gms/internal/ads/zzaet;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzw:Lcom/google/android/gms/internal/ads/zzaet;

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzc()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zza()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzj:Lcom/google/android/gms/internal/ads/zzaet;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzb()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzg:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 56
    .line 57
    .line 58
    const-string p2, "application/id3"

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzj:Lcom/google/android/gms/internal/ads/zzaet;

    .line 77
    .line 78
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzv:J

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamn;->zzg()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
