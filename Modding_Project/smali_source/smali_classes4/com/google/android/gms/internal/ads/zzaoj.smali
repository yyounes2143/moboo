.class final Lcom/google/android/gms/internal/ads/zzaoj;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaok;


# static fields
.field private static final zza:[I

.field private static final zzb:[I


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzadq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaet;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaon;

.field private final zzf:I

.field private final zzg:[B

.field private final zzh:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:I

.field private zzl:J

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[I

    .line 9
    .line 10
    const/16 v0, 0x59

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
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
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzaet;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 9
    .line 10
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzc:I

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:I

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 22
    .line 23
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzf:[B

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    .line 36
    .line 37
    iget v1, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzb:I

    .line 38
    .line 39
    mul-int/lit8 v2, v1, 0x4

    .line 40
    .line 41
    iget v3, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzd:I

    .line 42
    .line 43
    sub-int v2, v3, v2

    .line 44
    .line 45
    iget v4, p3, Lcom/google/android/gms/internal/ads/zzaon;->zze:I

    .line 46
    .line 47
    mul-int/2addr v4, v1

    .line 48
    mul-int/lit8 v2, v2, 0x8

    .line 49
    .line 50
    div-int/2addr v2, v4

    .line 51
    add-int/2addr v2, p2

    .line 52
    if-ne v0, v2, :cond_0

    .line 53
    .line 54
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 55
    .line 56
    add-int p2, p1, v0

    .line 57
    .line 58
    add-int/lit8 p2, p2, -0x1

    .line 59
    .line 60
    div-int/2addr p2, v0

    .line 61
    mul-int/2addr v3, p2

    .line 62
    new-array v2, v3, [B

    .line 63
    .line 64
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:[B

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 67
    .line 68
    add-int v3, v0, v0

    .line 69
    .line 70
    mul-int/2addr v3, v1

    .line 71
    mul-int/2addr p2, v3

    .line 72
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Lcom/google/android/gms/internal/ads/zzek;

    .line 76
    .line 77
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzc:I

    .line 78
    .line 79
    iget v2, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzd:I

    .line 80
    .line 81
    mul-int/2addr p2, v2

    .line 82
    mul-int/lit8 p2, p2, 0x8

    .line 83
    .line 84
    div-int/2addr p2, v0

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "audio/raw"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 99
    .line 100
    .line 101
    add-int/2addr p1, p1

    .line 102
    mul-int/2addr p1, v1

    .line 103
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 104
    .line 105
    .line 106
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzb:I

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 109
    .line 110
    .line 111
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaon;->zzc:I

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 125
    .line 126
    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "Expected frames per block: "

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, "; got: "

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const/4 p2, 0x0

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    throw p1
.end method

.method private final zzd(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaon;->zzb:I

    .line 4
    .line 5
    add-int/2addr v0, v0

    .line 6
    div-int/2addr p1, v0

    .line 7
    return p1
.end method

.method private final zze(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaon;->zzb:I

    .line 5
    .line 6
    mul-int/2addr p1, v0

    .line 7
    return p1
.end method

.method private final zzf(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 4
    .line 5
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaon;->zzc:I

    .line 6
    .line 7
    int-to-long v6, v1

    .line 8
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 9
    .line 10
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:J

    .line 11
    .line 12
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:J

    .line 13
    .line 14
    const-wide/32 v4, 0xf4240

    .line 15
    .line 16
    .line 17
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    add-long v12, v9, v1

    .line 22
    .line 23
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaoj;->zze(I)I

    .line 24
    .line 25
    .line 26
    move-result v15

    .line 27
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 28
    .line 29
    sub-int v16, v1, v15

    .line 30
    .line 31
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzaet;

    .line 32
    .line 33
    const/4 v14, 0x1

    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 37
    .line 38
    .line 39
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:J

    .line 40
    .line 41
    move/from16 v3, p1

    .line 42
    .line 43
    int-to-long v3, v3

    .line 44
    add-long/2addr v1, v3

    .line 45
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:J

    .line 46
    .line 47
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 48
    .line 49
    sub-int/2addr v1, v15

    .line 50
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    .line 6
    .line 7
    int-to-long v3, p1

    .line 8
    move-wide v5, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaoq;-><init>(Lcom/google/android/gms/internal/ads/zzaon;IJJ)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzaet;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 20
    .line 21
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoq;->zza()J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaet;->zzl(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:J

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:J

    .line 11
    .line 12
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzado;J)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 6
    .line 7
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzaoj;->zzd(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:I

    .line 12
    .line 13
    sub-int v3, v4, v3

    .line 14
    .line 15
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 16
    .line 17
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    .line 18
    .line 19
    add-int/2addr v3, v5

    .line 20
    const/4 v6, -0x1

    .line 21
    add-int/2addr v3, v6

    .line 22
    div-int/2addr v3, v5

    .line 23
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaon;

    .line 24
    .line 25
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzaon;->zzd:I

    .line 26
    .line 27
    mul-int/2addr v3, v8

    .line 28
    const-wide/16 v9, 0x0

    .line 29
    .line 30
    cmp-long v9, v1, v9

    .line 31
    .line 32
    const/4 v11, 0x1

    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    :goto_0
    move v9, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v9, 0x0

    .line 38
    :goto_1
    if-nez v9, :cond_2

    .line 39
    .line 40
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 41
    .line 42
    if-ge v12, v3, :cond_2

    .line 43
    .line 44
    sub-int v12, v3, v12

    .line 45
    .line 46
    int-to-long v12, v12

    .line 47
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    long-to-int v12, v12

    .line 52
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:[B

    .line 53
    .line 54
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 55
    .line 56
    move-object/from16 v15, p1

    .line 57
    .line 58
    invoke-interface {v15, v13, v14, v12}, Lcom/google/android/gms/internal/ads/zzado;->zza([BII)I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    if-ne v12, v6, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 66
    .line 67
    add-int/2addr v13, v12

    .line 68
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 72
    .line 73
    div-int/2addr v1, v8

    .line 74
    if-lez v1, :cond_8

    .line 75
    .line 76
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:[B

    .line 77
    .line 78
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Lcom/google/android/gms/internal/ads/zzek;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    :goto_2
    if-ge v6, v1, :cond_7

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_3
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzaon;->zzb:I

    .line 85
    .line 86
    if-ge v12, v13, :cond_6

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    mul-int v15, v6, v8

    .line 93
    .line 94
    div-int v16, v8, v13

    .line 95
    .line 96
    add-int/lit8 v16, v16, -0x4

    .line 97
    .line 98
    mul-int/lit8 v17, v12, 0x4

    .line 99
    .line 100
    add-int v15, v15, v17

    .line 101
    .line 102
    add-int/lit8 v17, v15, 0x1

    .line 103
    .line 104
    move/from16 v18, v11

    .line 105
    .line 106
    aget-byte v11, v2, v17

    .line 107
    .line 108
    and-int/lit16 v11, v11, 0xff

    .line 109
    .line 110
    aget-byte v10, v2, v15

    .line 111
    .line 112
    and-int/lit16 v10, v10, 0xff

    .line 113
    .line 114
    add-int/lit8 v19, v15, 0x2

    .line 115
    .line 116
    move/from16 p1, v1

    .line 117
    .line 118
    aget-byte v1, v2, v19

    .line 119
    .line 120
    and-int/lit16 v1, v1, 0xff

    .line 121
    .line 122
    move-object/from16 v19, v2

    .line 123
    .line 124
    const/16 v2, 0x58

    .line 125
    .line 126
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    sget-object v20, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:[I

    .line 131
    .line 132
    aget v21, v20, v1

    .line 133
    .line 134
    mul-int v22, v6, v5

    .line 135
    .line 136
    mul-int v22, v22, v13

    .line 137
    .line 138
    add-int v22, v22, v12

    .line 139
    .line 140
    shl-int/lit8 v11, v11, 0x8

    .line 141
    .line 142
    or-int/2addr v10, v11

    .line 143
    int-to-short v10, v10

    .line 144
    and-int/lit16 v11, v10, 0xff

    .line 145
    .line 146
    add-int v22, v22, v22

    .line 147
    .line 148
    int-to-byte v11, v11

    .line 149
    aput-byte v11, v14, v22

    .line 150
    .line 151
    add-int/lit8 v11, v22, 0x1

    .line 152
    .line 153
    shr-int/lit8 v2, v10, 0x8

    .line 154
    .line 155
    int-to-byte v2, v2

    .line 156
    aput-byte v2, v14, v11

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    :goto_4
    add-int v11, v16, v16

    .line 160
    .line 161
    if-ge v2, v11, :cond_5

    .line 162
    .line 163
    mul-int/lit8 v11, v13, 0x4

    .line 164
    .line 165
    add-int/2addr v11, v15

    .line 166
    div-int/lit8 v23, v2, 0x8

    .line 167
    .line 168
    div-int/lit8 v24, v2, 0x2

    .line 169
    .line 170
    rem-int/lit8 v24, v24, 0x4

    .line 171
    .line 172
    mul-int v23, v23, v13

    .line 173
    .line 174
    mul-int/lit8 v23, v23, 0x4

    .line 175
    .line 176
    add-int v11, v11, v23

    .line 177
    .line 178
    add-int v11, v11, v24

    .line 179
    .line 180
    aget-byte v11, v19, v11

    .line 181
    .line 182
    move/from16 p3, v1

    .line 183
    .line 184
    and-int/lit16 v1, v11, 0xff

    .line 185
    .line 186
    rem-int/lit8 v23, v2, 0x2

    .line 187
    .line 188
    if-nez v23, :cond_3

    .line 189
    .line 190
    and-int/lit8 v1, v11, 0xf

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_3
    shr-int/lit8 v1, v1, 0x4

    .line 194
    .line 195
    :goto_5
    and-int/lit8 v11, v1, 0x7

    .line 196
    .line 197
    add-int/2addr v11, v11

    .line 198
    add-int/lit8 v11, v11, 0x1

    .line 199
    .line 200
    mul-int v11, v11, v21

    .line 201
    .line 202
    and-int/lit8 v21, v1, 0x8

    .line 203
    .line 204
    shr-int/lit8 v11, v11, 0x3

    .line 205
    .line 206
    if-eqz v21, :cond_4

    .line 207
    .line 208
    neg-int v11, v11

    .line 209
    :cond_4
    add-int/2addr v10, v11

    .line 210
    const/16 v11, 0x7fff

    .line 211
    .line 212
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    const/16 v11, -0x8000

    .line 217
    .line 218
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    add-int v11, v13, v13

    .line 223
    .line 224
    add-int v22, v22, v11

    .line 225
    .line 226
    and-int/lit16 v11, v10, 0xff

    .line 227
    .line 228
    int-to-byte v11, v11

    .line 229
    aput-byte v11, v14, v22

    .line 230
    .line 231
    add-int/lit8 v11, v22, 0x1

    .line 232
    .line 233
    move/from16 v21, v1

    .line 234
    .line 235
    shr-int/lit8 v1, v10, 0x8

    .line 236
    .line 237
    int-to-byte v1, v1

    .line 238
    aput-byte v1, v14, v11

    .line 239
    .line 240
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[I

    .line 241
    .line 242
    aget v1, v1, v21

    .line 243
    .line 244
    add-int v1, p3, v1

    .line 245
    .line 246
    const/16 v11, 0x58

    .line 247
    .line 248
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    const/4 v11, 0x0

    .line 253
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    aget v21, v20, v1

    .line 258
    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_5
    const/4 v11, 0x0

    .line 263
    add-int/lit8 v12, v12, 0x1

    .line 264
    .line 265
    move/from16 v1, p1

    .line 266
    .line 267
    move/from16 v11, v18

    .line 268
    .line 269
    move-object/from16 v2, v19

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_6
    move/from16 p1, v1

    .line 274
    .line 275
    move-object/from16 v19, v2

    .line 276
    .line 277
    move/from16 v18, v11

    .line 278
    .line 279
    const/4 v11, 0x0

    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 281
    .line 282
    move/from16 v11, v18

    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_7
    move/from16 p1, v1

    .line 287
    .line 288
    const/4 v11, 0x0

    .line 289
    mul-int v5, v5, p1

    .line 290
    .line 291
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zze(I)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 299
    .line 300
    .line 301
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 302
    .line 303
    mul-int v2, p1, v8

    .line 304
    .line 305
    sub-int/2addr v1, v2

    .line 306
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzaet;

    .line 313
    .line 314
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 315
    .line 316
    .line 317
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 318
    .line 319
    add-int/2addr v2, v1

    .line 320
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 321
    .line 322
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaoj;->zzd(I)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-lt v1, v4, :cond_8

    .line 327
    .line 328
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzaoj;->zzf(I)V

    .line 329
    .line 330
    .line 331
    :cond_8
    if-eqz v9, :cond_9

    .line 332
    .line 333
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 334
    .line 335
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->zzd(I)I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-lez v1, :cond_9

    .line 340
    .line 341
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->zzf(I)V

    .line 342
    .line 343
    .line 344
    :cond_9
    return v9
.end method
