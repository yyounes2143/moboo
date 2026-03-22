.class public final Lcom/google/android/gms/internal/ads/zzafa;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# static fields
.field private static final zza:[I

.field private static final zzb:[I

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field private final zze:[B

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzg:Z

.field private zzh:J

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzo:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzp:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzq:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzr:J

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/android/gms/internal/ads/zzafa;->zza:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[I

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    const-string v1, "#!AMR\n"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/google/android/gms/internal/ads/zzafa;->zzc:[B

    .line 28
    .line 29
    const-string v1, "#!AMR-WB\n"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:[B

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zze:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzp:Lcom/google/android/gms/internal/ads/zzaet;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzado;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zze:[B

    .line 13
    .line 14
    invoke-interface {p1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 15
    .line 16
    .line 17
    aget-byte v0, v0, v3

    .line 18
    .line 19
    and-int/lit16 v4, v0, 0x83

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-gtz v4, :cond_a

    .line 23
    .line 24
    shr-int/lit8 v0, v0, 0x3

    .line 25
    .line 26
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:Z

    .line 27
    .line 28
    and-int/lit8 v0, v0, 0xf

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const/16 v6, 0xa

    .line 33
    .line 34
    if-lt v0, v6, :cond_2

    .line 35
    .line 36
    const/16 v6, 0xd

    .line 37
    .line 38
    if-le v0, v6, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-nez v4, :cond_8

    .line 42
    .line 43
    const/16 v6, 0xc

    .line 44
    .line 45
    if-lt v0, v6, :cond_2

    .line 46
    .line 47
    const/16 v6, 0xe

    .line 48
    .line 49
    if-gt v0, v6, :cond_2

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 53
    .line 54
    sget-object v4, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[I

    .line 55
    .line 56
    aget v0, v4, v0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzafa;->zza:[I

    .line 60
    .line 61
    aget v0, v4, v0

    .line 62
    .line 63
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 66
    .line 67
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 68
    .line 69
    if-ne v4, v1, :cond_4

    .line 70
    .line 71
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 72
    .line 73
    move v4, v0

    .line 74
    :cond_4
    if-ne v4, v0, :cond_5

    .line 75
    .line 76
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzl:I

    .line 77
    .line 78
    add-int/2addr v4, v2

    .line 79
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzl:I

    .line 80
    .line 81
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzp:Lcom/google/android/gms/internal/ads/zzaet;

    .line 82
    .line 83
    invoke-interface {v4, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ne p1, v1, :cond_6

    .line 88
    .line 89
    return v1

    .line 90
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 91
    .line 92
    sub-int/2addr v0, p1

    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 94
    .line 95
    if-lez v0, :cond_7

    .line 96
    .line 97
    return v3

    .line 98
    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzp:Lcom/google/android/gms/internal/ads/zzaet;

    .line 99
    .line 100
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:J

    .line 101
    .line 102
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:I

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v7, 0x1

    .line 107
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 108
    .line 109
    .line 110
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:J

    .line 111
    .line 112
    const-wide/16 v4, 0x4e20

    .line 113
    .line 114
    add-long/2addr v0, v4

    .line 115
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:J

    .line 116
    .line 117
    return v3

    .line 118
    :cond_8
    :goto_3
    :try_start_1
    const-string p1, "WB"

    .line 119
    .line 120
    const-string v3, "NB"

    .line 121
    .line 122
    if-eq v2, v4, :cond_9

    .line 123
    .line 124
    move-object p1, v3

    .line 125
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "Illegal AMR "

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, " frame type "

    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    throw p1

    .line 155
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, "Invalid padding bits for frame header "

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :catch_0
    return v1
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzado;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzg(Lcom/google/android/gms/internal/ads/zzado;[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:Z

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 15
    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:[B

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzg(Lcom/google/android/gms/internal/ads/zzado;[B)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:Z

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    return v2
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzo:Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long p2, v0, v2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzh(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "Could not find AMR header."

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzs:Z

    .line 34
    .line 35
    if-nez p2, :cond_6

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzs:Z

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:Z

    .line 41
    .line 42
    const-string v1, "audio/amr-wb"

    .line 43
    .line 44
    if-eq p2, v0, :cond_2

    .line 45
    .line 46
    const-string v4, "audio/amr"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v4, v1

    .line 50
    :goto_1
    if-eq p2, v0, :cond_3

    .line 51
    .line 52
    const-string v1, "audio/3gpp"

    .line 53
    .line 54
    :cond_3
    if-eq p2, v0, :cond_4

    .line 55
    .line 56
    const/16 v5, 0x1f40

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/16 v5, 0x3e80

    .line 60
    .line 61
    :goto_2
    if-eqz v0, :cond_5

    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[I

    .line 64
    .line 65
    const/16 v6, 0x8

    .line 66
    .line 67
    aget v0, v0, v6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zza:[I

    .line 71
    .line 72
    const/4 v6, 0x7

    .line 73
    aget v0, v0, v6

    .line 74
    .line 75
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzo:Lcom/google/android/gms/internal/ads/zzaet;

    .line 76
    .line 77
    new-instance v7, Lcom/google/android/gms/internal/ads/zzx;

    .line 78
    .line 79
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-interface {v6, p2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zza(Lcom/google/android/gms/internal/ads/zzado;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzq:Lcom/google/android/gms/internal/ads/zzaem;

    .line 109
    .line 110
    if-eqz p2, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzael;

    .line 114
    .line 115
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzq:Lcom/google/android/gms/internal/ads/zzaem;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:Lcom/google/android/gms/internal/ads/zzadq;

    .line 126
    .line 127
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 128
    .line 129
    .line 130
    :goto_4
    const/4 p2, -0x1

    .line 131
    if-ne p1, p2, :cond_8

    .line 132
    .line 133
    return p2

    .line 134
    :cond_8
    const/4 p1, 0x0

    .line 135
    return p1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzo:Lcom/google/android/gms/internal/ads/zzaet;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzp:Lcom/google/android/gms/internal/ads/zzaet;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzf(JJ)V
    .locals 1

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzr:J

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:J

    .line 13
    .line 14
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzh(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
