.class public final Lcom/google/android/gms/internal/ads/zzahq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# static fields
.field private static final zza:[B

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:Ljava/util/UUID;

.field private static final zzf:Ljava/util/Map;


# instance fields
.field private zzA:J

.field private zzB:Z

.field private zzC:Lcom/google/android/gms/internal/ads/zzaho;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzD:Z

.field private zzE:I

.field private zzF:J

.field private zzG:Z

.field private zzH:J

.field private zzI:J

.field private zzJ:J

.field private zzK:Lcom/google/android/gms/internal/ads/zzdy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzL:Lcom/google/android/gms/internal/ads/zzdy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzM:Z

.field private zzN:Z

.field private zzO:I

.field private zzP:J

.field private zzQ:J

.field private zzR:I

.field private zzS:I

.field private zzT:[I

.field private zzU:I

.field private zzV:I

.field private zzW:I

.field private zzX:I

.field private zzY:Z

.field private zzZ:J

.field private zzaa:I

.field private zzab:I

.field private zzac:I

.field private zzad:Z

.field private zzae:Z

.field private zzaf:Z

.field private zzag:I

.field private zzah:B

.field private zzai:Z

.field private zzaj:Lcom/google/android/gms/internal/ads/zzadq;

.field private final zzak:Lcom/google/android/gms/internal/ads/zzahl;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzahs;

.field private final zzh:Landroid/util/SparseArray;

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzakj;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzek;

.field private zzv:Ljava/nio/ByteBuffer;

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/android/gms/internal/ads/zzahq;->zza:[B

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 13
    .line 14
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/ads/zzahq;->zzb:[B

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zzc:[B

    .line 28
    .line 29
    const/16 v0, 0x26

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_2

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zzd:[B

    .line 37
    .line 38
    new-instance v0, Ljava/util/UUID;

    .line 39
    .line 40
    const-wide v1, 0x100000000001000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zze:Ljava/util/UUID;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "htc_video_rotA-000"

    .line 66
    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const/16 v1, 0x5a

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "htc_video_rotA-090"

    .line 77
    .line 78
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0xb4

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "htc_video_rotA-180"

    .line 88
    .line 89
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const/16 v1, 0x10e

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "htc_video_rotA-270"

    .line 99
    .line 100
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zzf:Ljava/util/Map;

    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahl;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lcom/google/android/gms/internal/ads/zzahl;ILcom/google/android/gms/internal/ads/zzakj;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahl;ILcom/google/android/gms/internal/ads/zzakj;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzy:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzI:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzJ:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzak:Lcom/google/android/gms/internal/ads/zzahl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzahp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahl;->zza(Lcom/google/android/gms/internal/ads/zzahm;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzk:Lcom/google/android/gms/internal/ads/zzakj;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzi:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzj:Z

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzg:Lcom/google/android/gms/internal/ads/zzahs;

    new-instance p1, Landroid/util/SparseArray;

    .line 4
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 6
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzo:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzp:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzl:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzr:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 p2, 0x8

    .line 12
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzs:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 13
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzt:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakj;I)V
    .locals 1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahl;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lcom/google/android/gms/internal/ads/zzahl;ILcom/google/android/gms/internal/ads/zzakj;)V

    return-void
.end method

.method public static bridge synthetic zza()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zzf:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzg()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zze:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzo()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahq;->zzb:[B

    .line 2
    .line 3
    return-object v0
.end method

.method private final zzp(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaho;IZ)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "S_TEXT/UTF8"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzahq;->zza:[B

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzx(Lcom/google/android/gms/internal/ads/zzado;[BI)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzw()V

    .line 19
    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "S_TEXT/ASS"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object p2, Lcom/google/android/gms/internal/ads/zzahq;->zzc:[B

    .line 33
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzx(Lcom/google/android/gms/internal/ads/zzado;[BI)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzw()V

    .line 40
    .line 41
    .line 42
    return p1

    .line 43
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "S_TEXT/WEBVTT"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    sget-object p2, Lcom/google/android/gms/internal/ads/zzahq;->zzd:[B

    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzx(Lcom/google/android/gms/internal/ads/zzado;[BI)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzw()V

    .line 61
    .line 62
    .line 63
    return p1

    .line 64
    :cond_2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzad:Z

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    const/4 v3, 0x4

    .line 70
    const/4 v4, 0x1

    .line 71
    const/4 v5, 0x0

    .line 72
    if-nez v1, :cond_11

    .line 73
    .line 74
    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzh:Z

    .line 75
    .line 76
    if-eqz v1, :cond_d

    .line 77
    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 79
    .line 80
    const v6, -0x40000001    # -1.9999999f

    .line 81
    .line 82
    .line 83
    and-int/2addr v1, v6

    .line 84
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzae:Z

    .line 87
    .line 88
    const/16 v6, 0x80

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {p1, v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 99
    .line 100
    .line 101
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 102
    .line 103
    add-int/2addr v7, v4

    .line 104
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    aget-byte v7, v7, v5

    .line 111
    .line 112
    and-int/2addr v7, v6

    .line 113
    if-eq v7, v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    aget-byte v1, v1, v5

    .line 120
    .line 121
    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzah:B

    .line 122
    .line 123
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzae:Z

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const-string p1, "Extension bit is set in signal byte"

    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    throw p1

    .line 134
    :cond_4
    :goto_0
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzah:B

    .line 135
    .line 136
    and-int/lit8 v7, v1, 0x1

    .line 137
    .line 138
    if-ne v7, v4, :cond_e

    .line 139
    .line 140
    and-int/2addr v1, v2

    .line 141
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 142
    .line 143
    const/high16 v8, 0x40000000    # 2.0f

    .line 144
    .line 145
    or-int/2addr v7, v8

    .line 146
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 147
    .line 148
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzai:Z

    .line 149
    .line 150
    if-nez v7, :cond_6

    .line 151
    .line 152
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzs:Lcom/google/android/gms/internal/ads/zzek;

    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    const/16 v9, 0x8

    .line 159
    .line 160
    invoke-interface {p1, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 161
    .line 162
    .line 163
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 164
    .line 165
    add-int/2addr v8, v9

    .line 166
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 167
    .line 168
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzai:Z

    .line 169
    .line 170
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 171
    .line 172
    if-ne v1, v2, :cond_5

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    move v6, v5

    .line 176
    :goto_1
    or-int/2addr v6, v9

    .line 177
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    int-to-byte v6, v6

    .line 182
    aput-byte v6, v10, v5

    .line 183
    .line 184
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v8, v4, v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    .line 188
    .line 189
    .line 190
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 191
    .line 192
    add-int/2addr v6, v4

    .line 193
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 194
    .line 195
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v7, v9, v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    .line 199
    .line 200
    .line 201
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 202
    .line 203
    add-int/2addr v6, v9

    .line 204
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 205
    .line 206
    :cond_6
    if-ne v1, v2, :cond_e

    .line 207
    .line 208
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaf:Z

    .line 209
    .line 210
    if-nez v1, :cond_7

    .line 211
    .line 212
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-interface {p1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 219
    .line 220
    .line 221
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 222
    .line 223
    add-int/2addr v6, v4

    .line 224
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 225
    .line 226
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzag:I

    .line 234
    .line 235
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaf:Z

    .line 236
    .line 237
    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzag:I

    .line 238
    .line 239
    mul-int/2addr v1, v3

    .line 240
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 241
    .line 242
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-interface {p1, v7, v5, v1}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 250
    .line 251
    .line 252
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 253
    .line 254
    add-int/2addr v7, v1

    .line 255
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 256
    .line 257
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzag:I

    .line 258
    .line 259
    shr-int/2addr v1, v4

    .line 260
    add-int/2addr v1, v4

    .line 261
    mul-int/lit8 v7, v1, 0x6

    .line 262
    .line 263
    add-int/2addr v7, v2

    .line 264
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 265
    .line 266
    if-eqz v8, :cond_8

    .line 267
    .line 268
    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-ge v8, v7, :cond_9

    .line 273
    .line 274
    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 279
    .line 280
    :cond_9
    int-to-short v1, v1

    .line 281
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 282
    .line 283
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    .line 285
    .line 286
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 289
    .line 290
    .line 291
    move v1, v5

    .line 292
    move v8, v1

    .line 293
    :goto_2
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzag:I

    .line 294
    .line 295
    if-ge v1, v9, :cond_b

    .line 296
    .line 297
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    sub-int v8, v9, v8

    .line 302
    .line 303
    rem-int/lit8 v10, v1, 0x2

    .line 304
    .line 305
    if-nez v10, :cond_a

    .line 306
    .line 307
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 308
    .line 309
    int-to-short v8, v8

    .line 310
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_a
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 315
    .line 316
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 317
    .line 318
    .line 319
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 320
    .line 321
    move v8, v9

    .line 322
    goto :goto_2

    .line 323
    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 324
    .line 325
    sub-int v1, p3, v1

    .line 326
    .line 327
    sub-int/2addr v1, v8

    .line 328
    and-int/lit8 v6, v9, 0x1

    .line 329
    .line 330
    if-ne v6, v4, :cond_c

    .line 331
    .line 332
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 333
    .line 334
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_c
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    int-to-short v1, v1

    .line 341
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 342
    .line 343
    .line 344
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 345
    .line 346
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 347
    .line 348
    .line 349
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzt:Lcom/google/android/gms/internal/ads/zzek;

    .line 350
    .line 351
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzv:Ljava/nio/ByteBuffer;

    .line 352
    .line 353
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v0, v1, v7, v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    .line 361
    .line 362
    .line 363
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 364
    .line 365
    add-int/2addr v1, v7

    .line 366
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_d
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzi:[B

    .line 370
    .line 371
    if-eqz v1, :cond_e

    .line 372
    .line 373
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    .line 374
    .line 375
    array-length v7, v1

    .line 376
    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 377
    .line 378
    .line 379
    :cond_e
    :goto_5
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 380
    .line 381
    const-string v6, "A_OPUS"

    .line 382
    .line 383
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_f

    .line 388
    .line 389
    if-eqz p4, :cond_10

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_f
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    .line 393
    .line 394
    if-lez p4, :cond_10

    .line 395
    .line 396
    :goto_6
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 397
    .line 398
    const/high16 v1, 0x10000000

    .line 399
    .line 400
    or-int/2addr p4, v1

    .line 401
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 402
    .line 403
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    .line 404
    .line 405
    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 406
    .line 407
    .line 408
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    .line 409
    .line 410
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 411
    .line 412
    .line 413
    move-result p4

    .line 414
    add-int/2addr p4, p3

    .line 415
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 416
    .line 417
    sub-int/2addr p4, v1

    .line 418
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 419
    .line 420
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 421
    .line 422
    .line 423
    shr-int/lit8 v6, p4, 0x18

    .line 424
    .line 425
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    and-int/lit16 v6, v6, 0xff

    .line 430
    .line 431
    int-to-byte v6, v6

    .line 432
    aput-byte v6, v7, v5

    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    shr-int/lit8 v7, p4, 0x10

    .line 439
    .line 440
    and-int/lit16 v7, v7, 0xff

    .line 441
    .line 442
    int-to-byte v7, v7

    .line 443
    aput-byte v7, v6, v4

    .line 444
    .line 445
    shr-int/lit8 v6, p4, 0x8

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    and-int/lit16 v6, v6, 0xff

    .line 452
    .line 453
    int-to-byte v6, v6

    .line 454
    aput-byte v6, v7, v2

    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    and-int/lit16 p4, p4, 0xff

    .line 461
    .line 462
    int-to-byte p4, p4

    .line 463
    const/4 v7, 0x3

    .line 464
    aput-byte p4, v6, v7

    .line 465
    .line 466
    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    .line 467
    .line 468
    .line 469
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 470
    .line 471
    add-int/2addr p4, v3

    .line 472
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 473
    .line 474
    :cond_10
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzad:Z

    .line 475
    .line 476
    :cond_11
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    .line 477
    .line 478
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    add-int/2addr p3, v1

    .line 483
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 484
    .line 485
    const-string v6, "V_MPEG4/ISO/AVC"

    .line 486
    .line 487
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_15

    .line 492
    .line 493
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 494
    .line 495
    const-string v6, "V_MPEGH/ISO/HEVC"

    .line 496
    .line 497
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_12

    .line 502
    .line 503
    goto :goto_9

    .line 504
    :cond_12
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 505
    .line 506
    if-nez v1, :cond_13

    .line 507
    .line 508
    goto :goto_8

    .line 509
    :cond_13
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 510
    .line 511
    .line 512
    move-result p4

    .line 513
    if-nez p4, :cond_14

    .line 514
    .line 515
    goto :goto_7

    .line 516
    :cond_14
    move v4, v5

    .line 517
    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 518
    .line 519
    .line 520
    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 521
    .line 522
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzd(Lcom/google/android/gms/internal/ads/zzado;)V

    .line 523
    .line 524
    .line 525
    :goto_8
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 526
    .line 527
    if-ge p4, p3, :cond_18

    .line 528
    .line 529
    sub-int p4, p3, p4

    .line 530
    .line 531
    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzahq;->zzq(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaet;I)I

    .line 532
    .line 533
    .line 534
    move-result p4

    .line 535
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 536
    .line 537
    add-int/2addr v1, p4

    .line 538
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 539
    .line 540
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 541
    .line 542
    add-int/2addr v1, p4

    .line 543
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_15
    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    .line 547
    .line 548
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    aput-byte v5, v6, v5

    .line 553
    .line 554
    aput-byte v5, v6, v4

    .line 555
    .line 556
    aput-byte v5, v6, v2

    .line 557
    .line 558
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzY:I

    .line 559
    .line 560
    rsub-int/lit8 v4, v2, 0x4

    .line 561
    .line 562
    :goto_a
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 563
    .line 564
    if-ge v7, p3, :cond_18

    .line 565
    .line 566
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzac:I

    .line 567
    .line 568
    if-nez v7, :cond_17

    .line 569
    .line 570
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 571
    .line 572
    .line 573
    move-result v7

    .line 574
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    add-int v8, v4, v7

    .line 579
    .line 580
    sub-int v9, v2, v7

    .line 581
    .line 582
    invoke-interface {p1, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 583
    .line 584
    .line 585
    if-lez v7, :cond_16

    .line 586
    .line 587
    invoke-virtual {p4, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 588
    .line 589
    .line 590
    :cond_16
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 591
    .line 592
    add-int/2addr v7, v2

    .line 593
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 594
    .line 595
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzac:I

    .line 603
    .line 604
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzl:Lcom/google/android/gms/internal/ads/zzek;

    .line 605
    .line 606
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 607
    .line 608
    .line 609
    invoke-interface {v0, v7, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 610
    .line 611
    .line 612
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 613
    .line 614
    add-int/2addr v7, v3

    .line 615
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 616
    .line 617
    goto :goto_a

    .line 618
    :cond_17
    invoke-direct {p0, p1, v0, v7}, Lcom/google/android/gms/internal/ads/zzahq;->zzq(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaet;I)I

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 623
    .line 624
    add-int/2addr v8, v7

    .line 625
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 626
    .line 627
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 628
    .line 629
    add-int/2addr v8, v7

    .line 630
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 631
    .line 632
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzac:I

    .line 633
    .line 634
    sub-int/2addr v8, v7

    .line 635
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzac:I

    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_18
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 639
    .line 640
    const-string p2, "A_VORBIS"

    .line 641
    .line 642
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    if-eqz p1, :cond_19

    .line 647
    .line 648
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzo:Lcom/google/android/gms/internal/ads/zzek;

    .line 649
    .line 650
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 651
    .line 652
    .line 653
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 654
    .line 655
    .line 656
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 657
    .line 658
    add-int/2addr p1, v3

    .line 659
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 660
    .line 661
    :cond_19
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 662
    .line 663
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzw()V

    .line 664
    .line 665
    .line 666
    return p1
.end method

.method private final zzq(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaet;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private final zzr(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzy:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v2, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v4, 0x3e8

    .line 13
    .line 14
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 15
    .line 16
    move-wide v0, p1

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
.end method

.method private final zzs(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzK:Lcom/google/android/gms/internal/ads/zzdy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzL:Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Element "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " must be in a Cues"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    throw p1
.end method

.method private final zzt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Element "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " must be in a TrackEntry"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    throw p1
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzaho;JIII)V
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v3, v2

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 12
    .line 13
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 14
    .line 15
    move/from16 v5, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v7, p6

    .line 20
    .line 21
    move-object v1, v3

    .line 22
    move-wide/from16 v3, p2

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzaeu;->zzc(Lcom/google/android/gms/internal/ads/zzaet;JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "S_TEXT/UTF8"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v4, "S_TEXT/WEBVTT"

    .line 38
    .line 39
    const-string v5, "S_TEXT/ASS"

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 62
    .line 63
    const-string v8, "MatroskaExtractor"

    .line 64
    .line 65
    if-le v2, v9, :cond_2

    .line 66
    .line 67
    const-string v2, "Skipping subtitle sample in laced block."

    .line 68
    .line 69
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzQ:J

    .line 74
    .line 75
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v2, v10, v12

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    const-string v2, "Skipping subtitle sample with no duration."

    .line 85
    .line 86
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    move/from16 v2, p5

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzr:Lcom/google/android/gms/internal/ads/zzek;

    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    const v14, 0x2c0618eb

    .line 106
    .line 107
    .line 108
    if-eq v13, v14, :cond_7

    .line 109
    .line 110
    const v5, 0x3e4ca2d8

    .line 111
    .line 112
    .line 113
    if-eq v13, v5, :cond_6

    .line 114
    .line 115
    const v4, 0x54c61e47

    .line 116
    .line 117
    .line 118
    if-eq v13, v4, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_8

    .line 126
    .line 127
    move v2, v7

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    move v2, v6

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    move v2, v9

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    :goto_1
    const/4 v2, -0x1

    .line 146
    :goto_2
    const-wide/16 v3, 0x3e8

    .line 147
    .line 148
    if-eqz v2, :cond_b

    .line 149
    .line 150
    if-eq v2, v9, :cond_a

    .line 151
    .line 152
    if-ne v2, v6, :cond_9

    .line 153
    .line 154
    const-string v2, "%02d:%02d:%02d.%03d"

    .line 155
    .line 156
    invoke-static {v10, v11, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahq;->zzy(JLjava/lang/String;J)[B

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/16 v3, 0x19

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :cond_a
    const-string v2, "%01d:%02d:%02d:%02d"

    .line 170
    .line 171
    const-wide/16 v3, 0x2710

    .line 172
    .line 173
    invoke-static {v10, v11, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahq;->zzy(JLjava/lang/String;J)[B

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const/16 v3, 0x15

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_b
    const-string v2, "%02d:%02d:%02d,%03d"

    .line 181
    .line 182
    invoke-static {v10, v11, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahq;->zzy(JLjava/lang/String;J)[B

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/16 v3, 0x13

    .line 187
    .line 188
    :goto_3
    array-length v4, v2

    .line 189
    invoke-static {v2, v7, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    :goto_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ge v2, v3, :cond_d

    .line 201
    .line 202
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    aget-byte v3, v3, v2

    .line 207
    .line 208
    if-nez v3, :cond_c

    .line 209
    .line 210
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 218
    .line 219
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-interface {v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    add-int v2, p5, v2

    .line 231
    .line 232
    :goto_6
    const/high16 v3, 0x10000000

    .line 233
    .line 234
    and-int v3, p4, v3

    .line 235
    .line 236
    if-eqz v3, :cond_f

    .line 237
    .line 238
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 239
    .line 240
    if-le v3, v9, :cond_e

    .line 241
    .line 242
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    .line 243
    .line 244
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 255
    .line 256
    invoke-interface {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzaet;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    .line 257
    .line 258
    .line 259
    add-int/2addr v2, v4

    .line 260
    :cond_f
    :goto_7
    move v14, v2

    .line 261
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 264
    .line 265
    move-wide/from16 v11, p2

    .line 266
    .line 267
    move/from16 v13, p4

    .line 268
    .line 269
    move/from16 v15, p6

    .line 270
    .line 271
    move-object/from16 v16, v1

    .line 272
    .line 273
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 274
    .line 275
    .line 276
    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzN:Z

    .line 277
    .line 278
    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzado;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v1, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v1, p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v1

    .line 21
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzF(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int v3, p2, v3

    .line 41
    .line 42
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final zzw()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaa:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzab:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzac:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzad:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzae:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaf:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzag:I

    .line 15
    .line 16
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzah:B

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzai:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzq:Lcom/google/android/gms/internal/ads/zzek;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzado;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    add-int v1, v0, p3

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzr:Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzb()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    add-int v3, v1, p3

    .line 14
    .line 15
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    array-length v3, p2

    .line 20
    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static zzy(JLjava/lang/String;J)[B
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, p0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 16
    .line 17
    .line 18
    const-wide v2, 0xd693a400L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v4, p0, v2

    .line 24
    .line 25
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    long-to-int v4, v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    int-to-long v7, v4

    .line 33
    mul-long/2addr v7, v2

    .line 34
    sub-long/2addr p0, v7

    .line 35
    const-wide/32 v2, 0x3938700

    .line 36
    .line 37
    .line 38
    div-long v7, p0, v2

    .line 39
    .line 40
    long-to-int v4, v7

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    int-to-long v8, v4

    .line 46
    mul-long/2addr v8, v2

    .line 47
    sub-long/2addr p0, v8

    .line 48
    const-wide/32 v2, 0xf4240

    .line 49
    .line 50
    .line 51
    div-long v8, p0, v2

    .line 52
    .line 53
    long-to-int v4, v8

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    int-to-long v9, v4

    .line 59
    mul-long/2addr v9, v2

    .line 60
    sub-long/2addr p0, v9

    .line 61
    div-long/2addr p0, p3

    .line 62
    long-to-int p0, p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 p1, 0x4

    .line 68
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v5, p1, v0

    .line 71
    .line 72
    aput-object v7, p1, v1

    .line 73
    .line 74
    const/4 p3, 0x2

    .line 75
    aput-object v8, p1, p3

    .line 76
    .line 77
    const/4 p3, 0x3

    .line 78
    aput-object p0, p1, p3

    .line 79
    .line 80
    invoke-static {v6, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 85
    .line 86
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method private static zzz([II)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-array p0, p1, [I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    if-lt v0, p1, :cond_1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    add-int/2addr v0, v0

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    new-array p0, p0, [I

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzN:Z

    .line 3
    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzN:Z

    .line 5
    .line 6
    if-nez v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzak:Lcom/google/android/gms/internal/ads/zzahl;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzahl;->zzc(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzG:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzI:J

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzH:J

    .line 27
    .line 28
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzG:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzD:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzI:J

    .line 38
    .line 39
    const-wide/16 v3, -0x1

    .line 40
    .line 41
    cmp-long v5, v1, v3

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 46
    .line 47
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzI:J

    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-ge v0, p2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaho;->zzd(Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzX:Lcom/google/android/gms/internal/ads/zzaet;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 75
    .line 76
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaes;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const/4 p1, -0x1

    .line 83
    return p1

    .line 84
    :cond_5
    return v0
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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzk:Lcom/google/android/gms/internal/ads/zzakj;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakm;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzakj;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 14
    .line 15
    return-void
.end method

.method public final zzf(JJ)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzJ:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzak:Lcom/google/android/gms/internal/ads/zzahl;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzahl;->zzb()V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzg:Lcom/google/android/gms/internal/ads/zzahs;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzahs;->zze()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzw()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-ge p1, p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaho;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzb()V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final zzh(IILcom/google/android/gms/internal/ads/zzado;)V
    .locals 25
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    const/16 v3, 0xa1

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x4

    .line 13
    const/16 v6, 0xa3

    .line 14
    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    if-eq v1, v3, :cond_b

    .line 19
    .line 20
    if-eq v1, v6, :cond_b

    .line 21
    .line 22
    const/16 v3, 0xa5

    .line 23
    .line 24
    if-eq v1, v3, :cond_8

    .line 25
    .line 26
    const/16 v3, 0x41ed

    .line 27
    .line 28
    if-eq v1, v3, :cond_5

    .line 29
    .line 30
    const/16 v3, 0x4255

    .line 31
    .line 32
    if-eq v1, v3, :cond_4

    .line 33
    .line 34
    const/16 v3, 0x47e2

    .line 35
    .line 36
    if-eq v1, v3, :cond_3

    .line 37
    .line 38
    const/16 v3, 0x53ab

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    const/16 v3, 0x63a2

    .line 43
    .line 44
    if-eq v1, v3, :cond_1

    .line 45
    .line 46
    const/16 v3, 0x7672

    .line 47
    .line 48
    if-ne v1, v3, :cond_0

    .line 49
    .line 50
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 54
    .line 55
    new-array v3, v2, [B

    .line 56
    .line 57
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzw:[B

    .line 58
    .line 59
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "Unexpected id: "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    throw v1

    .line 85
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 89
    .line 90
    new-array v3, v2, [B

    .line 91
    .line 92
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzk:[B

    .line 93
    .line 94
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzp:Lcom/google/android/gms/internal/ads/zzek;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 105
    .line 106
    .line 107
    rsub-int/lit8 v3, v2, 0x4

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v7, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    long-to-int v1, v1

    .line 124
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzE:I

    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    new-array v3, v2, [B

    .line 128
    .line 129
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 130
    .line 131
    .line 132
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 136
    .line 137
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaes;

    .line 138
    .line 139
    invoke-direct {v2, v9, v3, v10, v10}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(I[BII)V

    .line 140
    .line 141
    .line 142
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 149
    .line 150
    new-array v3, v2, [B

    .line 151
    .line 152
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:[B

    .line 153
    .line 154
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaho;->zza(Lcom/google/android/gms/internal/ads/zzaho;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    const v4, 0x64767643

    .line 168
    .line 169
    .line 170
    if-eq v3, v4, :cond_7

    .line 171
    .line 172
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaho;->zza(Lcom/google/android/gms/internal/ads/zzaho;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const v4, 0x64766343

    .line 177
    .line 178
    .line 179
    if-ne v3, v4, :cond_6

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    :goto_0
    new-array v3, v2, [B

    .line 187
    .line 188
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzO:[B

    .line 189
    .line 190
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 195
    .line 196
    if-eq v1, v8, :cond_9

    .line 197
    .line 198
    goto/16 :goto_f

    .line 199
    .line 200
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 201
    .line 202
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzU:I

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 209
    .line 210
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzX:I

    .line 211
    .line 212
    if-ne v3, v5, :cond_a

    .line 213
    .line 214
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 215
    .line 216
    const-string v3, "V_VP9"

    .line 217
    .line 218
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v7, v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_a
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_b
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 242
    .line 243
    const/16 v11, 0x8

    .line 244
    .line 245
    if-nez v3, :cond_c

    .line 246
    .line 247
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzg:Lcom/google/android/gms/internal/ads/zzahs;

    .line 248
    .line 249
    invoke-virtual {v3, v7, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzahs;->zzd(Lcom/google/android/gms/internal/ads/zzado;ZZI)J

    .line 250
    .line 251
    .line 252
    move-result-wide v12

    .line 253
    long-to-int v12, v12

    .line 254
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzU:I

    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahs;->zza()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 261
    .line 262
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzQ:J

    .line 268
    .line 269
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 270
    .line 271
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 272
    .line 273
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 274
    .line 275
    .line 276
    :cond_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 277
    .line 278
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzU:I

    .line 279
    .line 280
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaho;

    .line 285
    .line 286
    if-nez v3, :cond_d

    .line 287
    .line 288
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 289
    .line 290
    sub-int v1, v2, v1

    .line 291
    .line 292
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 293
    .line 294
    .line 295
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 296
    .line 297
    return-void

    .line 298
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaho;->zzd(Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 299
    .line 300
    .line 301
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 302
    .line 303
    if-ne v12, v9, :cond_1f

    .line 304
    .line 305
    const/4 v12, 0x3

    .line 306
    invoke-direct {v0, v7, v12}, Lcom/google/android/gms/internal/ads/zzahq;->zzv(Lcom/google/android/gms/internal/ads/zzado;I)V

    .line 307
    .line 308
    .line 309
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 310
    .line 311
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    aget-byte v14, v14, v8

    .line 316
    .line 317
    and-int/lit8 v14, v14, 0x6

    .line 318
    .line 319
    shr-int/2addr v14, v9

    .line 320
    const/16 v15, 0xff

    .line 321
    .line 322
    if-nez v14, :cond_e

    .line 323
    .line 324
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 325
    .line 326
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 327
    .line 328
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzahq;->zzz([II)[I

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 333
    .line 334
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 335
    .line 336
    sub-int/2addr v2, v5

    .line 337
    add-int/lit8 v2, v2, -0x3

    .line 338
    .line 339
    aput v2, v4, v10

    .line 340
    .line 341
    :goto_1
    move/from16 v17, v9

    .line 342
    .line 343
    move/from16 v18, v10

    .line 344
    .line 345
    move/from16 v19, v11

    .line 346
    .line 347
    goto/16 :goto_9

    .line 348
    .line 349
    :cond_e
    invoke-direct {v0, v7, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zzv(Lcom/google/android/gms/internal/ads/zzado;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 353
    .line 354
    .line 355
    move-result-object v16

    .line 356
    aget-byte v5, v16, v12

    .line 357
    .line 358
    and-int/2addr v5, v15

    .line 359
    add-int/2addr v5, v9

    .line 360
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 361
    .line 362
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 363
    .line 364
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zzz([II)[I

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 369
    .line 370
    if-ne v14, v8, :cond_f

    .line 371
    .line 372
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 373
    .line 374
    sub-int/2addr v2, v4

    .line 375
    add-int/lit8 v2, v2, -0x4

    .line 376
    .line 377
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 378
    .line 379
    div-int/2addr v2, v4

    .line 380
    invoke-static {v5, v10, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :cond_f
    if-ne v14, v9, :cond_12

    .line 385
    .line 386
    move v4, v10

    .line 387
    move v6, v4

    .line 388
    const/4 v5, 0x4

    .line 389
    :goto_2
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 390
    .line 391
    add-int/lit8 v12, v12, -0x1

    .line 392
    .line 393
    if-ge v4, v12, :cond_11

    .line 394
    .line 395
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 396
    .line 397
    aput v10, v12, v4

    .line 398
    .line 399
    :goto_3
    add-int/lit8 v12, v5, 0x1

    .line 400
    .line 401
    invoke-direct {v0, v7, v12}, Lcom/google/android/gms/internal/ads/zzahq;->zzv(Lcom/google/android/gms/internal/ads/zzado;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 405
    .line 406
    .line 407
    move-result-object v14

    .line 408
    aget-byte v5, v14, v5

    .line 409
    .line 410
    and-int/2addr v5, v15

    .line 411
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 412
    .line 413
    aget v17, v14, v4

    .line 414
    .line 415
    add-int v17, v17, v5

    .line 416
    .line 417
    aput v17, v14, v4

    .line 418
    .line 419
    if-eq v5, v15, :cond_10

    .line 420
    .line 421
    add-int v6, v6, v17

    .line 422
    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 424
    .line 425
    move v5, v12

    .line 426
    goto :goto_2

    .line 427
    :cond_10
    move v5, v12

    .line 428
    goto :goto_3

    .line 429
    :cond_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 430
    .line 431
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 432
    .line 433
    sub-int/2addr v2, v14

    .line 434
    sub-int/2addr v2, v5

    .line 435
    sub-int/2addr v2, v6

    .line 436
    aput v2, v4, v12

    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_12
    if-ne v14, v12, :cond_1e

    .line 440
    .line 441
    move v6, v10

    .line 442
    move v12, v6

    .line 443
    const/4 v5, 0x4

    .line 444
    :goto_4
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 445
    .line 446
    add-int/lit8 v14, v14, -0x1

    .line 447
    .line 448
    if-ge v6, v14, :cond_1a

    .line 449
    .line 450
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 451
    .line 452
    aput v10, v14, v6

    .line 453
    .line 454
    add-int/lit8 v14, v5, 0x1

    .line 455
    .line 456
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/ads/zzahq;->zzv(Lcom/google/android/gms/internal/ads/zzado;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 460
    .line 461
    .line 462
    move-result-object v17

    .line 463
    aget-byte v17, v17, v5

    .line 464
    .line 465
    if-eqz v17, :cond_19

    .line 466
    .line 467
    move/from16 v17, v9

    .line 468
    .line 469
    move v9, v10

    .line 470
    :goto_5
    if-ge v9, v11, :cond_16

    .line 471
    .line 472
    rsub-int/lit8 v18, v9, 0x7

    .line 473
    .line 474
    move/from16 v19, v11

    .line 475
    .line 476
    shl-int v11, v17, v18

    .line 477
    .line 478
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 479
    .line 480
    .line 481
    move-result-object v18

    .line 482
    aget-byte v18, v18, v5

    .line 483
    .line 484
    and-int v18, v18, v11

    .line 485
    .line 486
    if-eqz v18, :cond_15

    .line 487
    .line 488
    add-int/2addr v14, v9

    .line 489
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/ads/zzahq;->zzv(Lcom/google/android/gms/internal/ads/zzado;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 493
    .line 494
    .line 495
    move-result-object v18

    .line 496
    add-int/lit8 v20, v5, 0x1

    .line 497
    .line 498
    aget-byte v5, v18, v5

    .line 499
    .line 500
    and-int/2addr v5, v15

    .line 501
    not-int v11, v11

    .line 502
    and-int/2addr v5, v11

    .line 503
    move/from16 v18, v10

    .line 504
    .line 505
    int-to-long v10, v5

    .line 506
    move/from16 v5, v20

    .line 507
    .line 508
    :goto_6
    if-ge v5, v14, :cond_13

    .line 509
    .line 510
    shl-long v10, v10, v19

    .line 511
    .line 512
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 513
    .line 514
    .line 515
    move-result-object v20

    .line 516
    add-int/lit8 v21, v5, 0x1

    .line 517
    .line 518
    aget-byte v5, v20, v5

    .line 519
    .line 520
    and-int/2addr v5, v15

    .line 521
    move/from16 v22, v9

    .line 522
    .line 523
    int-to-long v8, v5

    .line 524
    or-long/2addr v10, v8

    .line 525
    move/from16 v5, v21

    .line 526
    .line 527
    move/from16 v9, v22

    .line 528
    .line 529
    const/4 v8, 0x2

    .line 530
    goto :goto_6

    .line 531
    :cond_13
    move/from16 v22, v9

    .line 532
    .line 533
    if-lez v6, :cond_14

    .line 534
    .line 535
    mul-int/lit8 v9, v22, 0x7

    .line 536
    .line 537
    add-int/lit8 v9, v9, 0x6

    .line 538
    .line 539
    const-wide/16 v21, 0x1

    .line 540
    .line 541
    shl-long v8, v21, v9

    .line 542
    .line 543
    const-wide/16 v21, -0x1

    .line 544
    .line 545
    add-long v8, v8, v21

    .line 546
    .line 547
    sub-long/2addr v10, v8

    .line 548
    :cond_14
    :goto_7
    move v5, v14

    .line 549
    goto :goto_8

    .line 550
    :cond_15
    move/from16 v22, v9

    .line 551
    .line 552
    move/from16 v18, v10

    .line 553
    .line 554
    add-int/lit8 v9, v22, 0x1

    .line 555
    .line 556
    move/from16 v11, v19

    .line 557
    .line 558
    const/4 v8, 0x2

    .line 559
    goto :goto_5

    .line 560
    :cond_16
    move/from16 v18, v10

    .line 561
    .line 562
    move/from16 v19, v11

    .line 563
    .line 564
    const-wide/16 v10, 0x0

    .line 565
    .line 566
    goto :goto_7

    .line 567
    :goto_8
    const-wide/32 v8, -0x80000000

    .line 568
    .line 569
    .line 570
    cmp-long v8, v10, v8

    .line 571
    .line 572
    if-ltz v8, :cond_18

    .line 573
    .line 574
    const-wide/32 v8, 0x7fffffff

    .line 575
    .line 576
    .line 577
    cmp-long v8, v10, v8

    .line 578
    .line 579
    if-gtz v8, :cond_18

    .line 580
    .line 581
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 582
    .line 583
    long-to-int v9, v10

    .line 584
    if-eqz v6, :cond_17

    .line 585
    .line 586
    add-int/lit8 v10, v6, -0x1

    .line 587
    .line 588
    aget v10, v8, v10

    .line 589
    .line 590
    add-int/2addr v9, v10

    .line 591
    :cond_17
    aput v9, v8, v6

    .line 592
    .line 593
    add-int/2addr v12, v9

    .line 594
    add-int/lit8 v6, v6, 0x1

    .line 595
    .line 596
    move/from16 v9, v17

    .line 597
    .line 598
    move/from16 v10, v18

    .line 599
    .line 600
    move/from16 v11, v19

    .line 601
    .line 602
    const/4 v8, 0x2

    .line 603
    goto/16 :goto_4

    .line 604
    .line 605
    :cond_18
    const-string v1, "EBML lacing sample size out of range."

    .line 606
    .line 607
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    throw v1

    .line 612
    :cond_19
    const-string v1, "No valid varint length mask found"

    .line 613
    .line 614
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    throw v1

    .line 619
    :cond_1a
    move/from16 v17, v9

    .line 620
    .line 621
    move/from16 v18, v10

    .line 622
    .line 623
    move/from16 v19, v11

    .line 624
    .line 625
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 626
    .line 627
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzV:I

    .line 628
    .line 629
    sub-int/2addr v2, v6

    .line 630
    sub-int/2addr v2, v5

    .line 631
    sub-int/2addr v2, v12

    .line 632
    aput v2, v4, v14

    .line 633
    .line 634
    :goto_9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    aget-byte v2, v2, v18

    .line 639
    .line 640
    shl-int/lit8 v2, v2, 0x8

    .line 641
    .line 642
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    aget-byte v4, v4, v17

    .line 647
    .line 648
    and-int/2addr v4, v15

    .line 649
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzJ:J

    .line 650
    .line 651
    or-int/2addr v2, v4

    .line 652
    int-to-long v8, v2

    .line 653
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzahq;->zzr(J)J

    .line 654
    .line 655
    .line 656
    move-result-wide v8

    .line 657
    add-long/2addr v5, v8

    .line 658
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzP:J

    .line 659
    .line 660
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    .line 661
    .line 662
    const/4 v4, 0x2

    .line 663
    if-eq v2, v4, :cond_1d

    .line 664
    .line 665
    const/16 v2, 0xa3

    .line 666
    .line 667
    if-ne v1, v2, :cond_1c

    .line 668
    .line 669
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    aget-byte v1, v1, v4

    .line 674
    .line 675
    const/16 v2, 0x80

    .line 676
    .line 677
    and-int/2addr v1, v2

    .line 678
    if-ne v1, v2, :cond_1b

    .line 679
    .line 680
    move/from16 v2, v17

    .line 681
    .line 682
    :goto_a
    const/16 v1, 0xa3

    .line 683
    .line 684
    goto :goto_b

    .line 685
    :cond_1b
    move/from16 v2, v18

    .line 686
    .line 687
    goto :goto_a

    .line 688
    :cond_1c
    move/from16 v2, v18

    .line 689
    .line 690
    goto :goto_b

    .line 691
    :cond_1d
    move/from16 v2, v17

    .line 692
    .line 693
    :goto_b
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 694
    .line 695
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 696
    .line 697
    move/from16 v2, v18

    .line 698
    .line 699
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 700
    .line 701
    const/16 v2, 0xa3

    .line 702
    .line 703
    goto :goto_c

    .line 704
    :cond_1e
    const-string v1, "Unexpected lacing value: 2"

    .line 705
    .line 706
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    throw v1

    .line 711
    :cond_1f
    move/from16 v17, v9

    .line 712
    .line 713
    move v2, v6

    .line 714
    :goto_c
    if-ne v1, v2, :cond_21

    .line 715
    .line 716
    :goto_d
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 717
    .line 718
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 719
    .line 720
    if-ge v1, v2, :cond_20

    .line 721
    .line 722
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 723
    .line 724
    aget v1, v2, v1

    .line 725
    .line 726
    const/4 v2, 0x0

    .line 727
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;->zzp(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaho;IZ)I

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzP:J

    .line 732
    .line 733
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 734
    .line 735
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzf:I

    .line 736
    .line 737
    mul-int/2addr v4, v6

    .line 738
    div-int/lit16 v4, v4, 0x3e8

    .line 739
    .line 740
    int-to-long v8, v4

    .line 741
    add-long/2addr v1, v8

    .line 742
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 743
    .line 744
    const/4 v6, 0x0

    .line 745
    move-wide/from16 v23, v1

    .line 746
    .line 747
    move-object v1, v3

    .line 748
    move-wide/from16 v2, v23

    .line 749
    .line 750
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzahq;->zzu(Lcom/google/android/gms/internal/ads/zzaho;JIII)V

    .line 751
    .line 752
    .line 753
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 754
    .line 755
    add-int/lit8 v2, v2, 0x1

    .line 756
    .line 757
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 758
    .line 759
    move-object v3, v1

    .line 760
    goto :goto_d

    .line 761
    :cond_20
    const/4 v2, 0x0

    .line 762
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 763
    .line 764
    return-void

    .line 765
    :cond_21
    move-object v1, v3

    .line 766
    :goto_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 767
    .line 768
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 769
    .line 770
    if-ge v2, v3, :cond_22

    .line 771
    .line 772
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 773
    .line 774
    aget v4, v3, v2

    .line 775
    .line 776
    move/from16 v5, v17

    .line 777
    .line 778
    invoke-direct {v0, v7, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzahq;->zzp(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaho;IZ)I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    aput v4, v3, v2

    .line 783
    .line 784
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 785
    .line 786
    add-int/2addr v2, v5

    .line 787
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzR:I

    .line 788
    .line 789
    goto :goto_e

    .line 790
    :cond_22
    :goto_f
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahr;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzahr;->zza(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final zzj(I)V
    .locals 20
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v8, 0x1

    .line 8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 9
    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/16 v3, 0xa0

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/16 v5, 0x8

    .line 17
    .line 18
    const-string v6, "A_OPUS"

    .line 19
    .line 20
    const-wide/16 v9, 0x0

    .line 21
    .line 22
    if-eq v1, v3, :cond_15

    .line 23
    .line 24
    const/16 v3, 0xae

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    if-eq v1, v3, :cond_12

    .line 28
    .line 29
    const/16 v3, 0x4dbb

    .line 30
    .line 31
    const-wide/16 v4, -0x1

    .line 32
    .line 33
    const v6, 0x1c53bb6b

    .line 34
    .line 35
    .line 36
    if-eq v1, v3, :cond_10

    .line 37
    .line 38
    const/16 v3, 0x6240

    .line 39
    .line 40
    if-eq v1, v3, :cond_e

    .line 41
    .line 42
    const/16 v3, 0x6d80

    .line 43
    .line 44
    if-eq v1, v3, :cond_c

    .line 45
    .line 46
    const v3, 0x1549a966

    .line 47
    .line 48
    .line 49
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    if-eq v1, v3, :cond_a

    .line 55
    .line 56
    const v3, 0x1654ae6b

    .line 57
    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    if-eq v1, v6, :cond_0

    .line 62
    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzD:Z

    .line 66
    .line 67
    if-nez v1, :cond_7

    .line 68
    .line 69
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzK:Lcom/google/android/gms/internal/ads/zzdy;

    .line 72
    .line 73
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzL:Lcom/google/android/gms/internal/ads/zzdy;

    .line 74
    .line 75
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 76
    .line 77
    cmp-long v4, v14, v4

    .line 78
    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 82
    .line 83
    cmp-long v4, v4, v12

    .line 84
    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zza()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_6

    .line 94
    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zza()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zza()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eq v4, v5, :cond_1

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zza()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    new-array v5, v4, [I

    .line 114
    .line 115
    new-array v9, v4, [J

    .line 116
    .line 117
    new-array v10, v4, [J

    .line 118
    .line 119
    new-array v12, v4, [J

    .line 120
    .line 121
    move v13, v7

    .line 122
    :goto_0
    if-ge v13, v4, :cond_2

    .line 123
    .line 124
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v14

    .line 128
    aput-wide v14, v12, v13

    .line 129
    .line 130
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 131
    .line 132
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v16

    .line 136
    add-long v14, v14, v16

    .line 137
    .line 138
    aput-wide v14, v9, v13

    .line 139
    .line 140
    add-int/2addr v13, v8

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .line 143
    .line 144
    if-ge v7, v3, :cond_3

    .line 145
    .line 146
    add-int/lit8 v3, v7, 0x1

    .line 147
    .line 148
    aget-wide v13, v9, v3

    .line 149
    .line 150
    aget-wide v15, v9, v7

    .line 151
    .line 152
    sub-long/2addr v13, v15

    .line 153
    long-to-int v6, v13

    .line 154
    aput v6, v5, v7

    .line 155
    .line 156
    aget-wide v13, v12, v3

    .line 157
    .line 158
    aget-wide v15, v12, v7

    .line 159
    .line 160
    sub-long/2addr v13, v15

    .line 161
    aput-wide v13, v10, v7

    .line 162
    .line 163
    move v7, v3

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    move v4, v3

    .line 166
    :goto_2
    if-lez v4, :cond_4

    .line 167
    .line 168
    aget-wide v6, v12, v4

    .line 169
    .line 170
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 171
    .line 172
    cmp-long v6, v6, v13

    .line 173
    .line 174
    if-lez v6, :cond_4

    .line 175
    .line 176
    add-int/2addr v4, v2

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 179
    .line 180
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzw:J

    .line 181
    .line 182
    add-long/2addr v6, v13

    .line 183
    aget-wide v13, v9, v4

    .line 184
    .line 185
    sub-long/2addr v6, v13

    .line 186
    long-to-int v2, v6

    .line 187
    aput v2, v5, v4

    .line 188
    .line 189
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 190
    .line 191
    aget-wide v13, v12, v4

    .line 192
    .line 193
    sub-long/2addr v6, v13

    .line 194
    aput-wide v6, v10, v4

    .line 195
    .line 196
    if-ge v4, v3, :cond_5

    .line 197
    .line 198
    const-string v2, "MatroskaExtractor"

    .line 199
    .line 200
    const-string v3, "Discarding trailing cue points with timestamps greater than total duration"

    .line 201
    .line 202
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    add-int/2addr v4, v8

    .line 206
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-static {v10, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadb;

    .line 223
    .line 224
    invoke-direct {v2, v5, v9, v10, v12}, Lcom/google/android/gms/internal/ads/zzadb;-><init>([I[J[J[J)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_6
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzael;

    .line 229
    .line 230
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 231
    .line 232
    invoke-direct {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 233
    .line 234
    .line 235
    :goto_4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 236
    .line 237
    .line 238
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzD:Z

    .line 239
    .line 240
    :cond_7
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzK:Lcom/google/android/gms/internal/ads/zzdy;

    .line 241
    .line 242
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzL:Lcom/google/android/gms/internal/ads/zzdy;

    .line 243
    .line 244
    return-void

    .line 245
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_9

    .line 252
    .line 253
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 254
    .line 255
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_9
    const-string v1, "No valid tracks were found"

    .line 260
    .line 261
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    throw v1

    .line 266
    :cond_a
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzy:J

    .line 267
    .line 268
    cmp-long v1, v1, v12

    .line 269
    .line 270
    if-nez v1, :cond_b

    .line 271
    .line 272
    const-wide/32 v1, 0xf4240

    .line 273
    .line 274
    .line 275
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzy:J

    .line 276
    .line 277
    :cond_b
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzz:J

    .line 278
    .line 279
    cmp-long v3, v1, v12

    .line 280
    .line 281
    if-eqz v3, :cond_1b

    .line 282
    .line 283
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;->zzr(J)J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 288
    .line 289
    return-void

    .line 290
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 294
    .line 295
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzh:Z

    .line 296
    .line 297
    if-eqz v2, :cond_1b

    .line 298
    .line 299
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:[B

    .line 300
    .line 301
    if-nez v1, :cond_d

    .line 302
    .line 303
    goto/16 :goto_a

    .line 304
    .line 305
    :cond_d
    const-string v1, "Combining encryption and compression is not supported"

    .line 306
    .line 307
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    throw v1

    .line 312
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 316
    .line 317
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzh:Z

    .line 318
    .line 319
    if-eqz v2, :cond_1b

    .line 320
    .line 321
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 322
    .line 323
    if-eqz v2, :cond_f

    .line 324
    .line 325
    new-instance v2, Lcom/google/android/gms/internal/ads/zzs;

    .line 326
    .line 327
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    .line 328
    .line 329
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zza:Ljava/util/UUID;

    .line 330
    .line 331
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 332
    .line 333
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaho;->zzj:Lcom/google/android/gms/internal/ads/zzaes;

    .line 334
    .line 335
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaes;->zzb:[B

    .line 336
    .line 337
    const-string v6, "video/webm"

    .line 338
    .line 339
    invoke-direct {v3, v4, v11, v6, v5}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 340
    .line 341
    .line 342
    new-array v4, v8, [Lcom/google/android/gms/internal/ads/zzr;

    .line 343
    .line 344
    aput-object v3, v4, v7

    .line 345
    .line 346
    invoke-direct {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzr;)V

    .line 347
    .line 348
    .line 349
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzl:Lcom/google/android/gms/internal/ads/zzs;

    .line 350
    .line 351
    return-void

    .line 352
    :cond_f
    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    .line 353
    .line 354
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    throw v1

    .line 359
    :cond_10
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzE:I

    .line 360
    .line 361
    if-eq v1, v2, :cond_11

    .line 362
    .line 363
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzF:J

    .line 364
    .line 365
    cmp-long v4, v2, v4

    .line 366
    .line 367
    if-eqz v4, :cond_11

    .line 368
    .line 369
    if-ne v1, v6, :cond_1b

    .line 370
    .line 371
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzH:J

    .line 372
    .line 373
    return-void

    .line 374
    :cond_11
    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    .line 375
    .line 376
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    throw v1

    .line 381
    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 382
    .line 383
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 387
    .line 388
    if-eqz v3, :cond_14

    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    sparse-switch v9, :sswitch_data_0

    .line 395
    .line 396
    .line 397
    goto/16 :goto_5

    .line 398
    .line 399
    :sswitch_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_13

    .line 404
    .line 405
    const/16 v2, 0xb

    .line 406
    .line 407
    goto/16 :goto_5

    .line 408
    .line 409
    :sswitch_1
    const-string v4, "A_FLAC"

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_13

    .line 416
    .line 417
    const/16 v2, 0x16

    .line 418
    .line 419
    goto/16 :goto_5

    .line 420
    .line 421
    :sswitch_2
    const-string v4, "A_EAC3"

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_13

    .line 428
    .line 429
    const/16 v2, 0x11

    .line 430
    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :sswitch_3
    const-string v4, "V_MPEG2"

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-eqz v3, :cond_13

    .line 440
    .line 441
    const/4 v2, 0x3

    .line 442
    goto/16 :goto_5

    .line 443
    .line 444
    :sswitch_4
    const-string v4, "S_TEXT/UTF8"

    .line 445
    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-eqz v3, :cond_13

    .line 451
    .line 452
    const/16 v2, 0x1b

    .line 453
    .line 454
    goto/16 :goto_5

    .line 455
    .line 456
    :sswitch_5
    const-string v4, "S_TEXT/WEBVTT"

    .line 457
    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_13

    .line 463
    .line 464
    const/16 v2, 0x1d

    .line 465
    .line 466
    goto/16 :goto_5

    .line 467
    .line 468
    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    .line 469
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-eqz v3, :cond_13

    .line 475
    .line 476
    move v2, v5

    .line 477
    goto/16 :goto_5

    .line 478
    .line 479
    :sswitch_7
    const-string v4, "S_TEXT/ASS"

    .line 480
    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_13

    .line 486
    .line 487
    const/16 v2, 0x1c

    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :sswitch_8
    const-string v4, "A_PCM/INT/LIT"

    .line 492
    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_13

    .line 498
    .line 499
    const/16 v2, 0x18

    .line 500
    .line 501
    goto/16 :goto_5

    .line 502
    .line 503
    :sswitch_9
    const-string v4, "A_PCM/INT/BIG"

    .line 504
    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    if-eqz v3, :cond_13

    .line 510
    .line 511
    const/16 v2, 0x19

    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :sswitch_a
    const-string v4, "A_PCM/FLOAT/IEEE"

    .line 516
    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_13

    .line 522
    .line 523
    const/16 v2, 0x1a

    .line 524
    .line 525
    goto/16 :goto_5

    .line 526
    .line 527
    :sswitch_b
    const-string v4, "A_DTS/EXPRESS"

    .line 528
    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v3, :cond_13

    .line 534
    .line 535
    const/16 v2, 0x14

    .line 536
    .line 537
    goto/16 :goto_5

    .line 538
    .line 539
    :sswitch_c
    const-string v4, "V_THEORA"

    .line 540
    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_13

    .line 546
    .line 547
    const/16 v2, 0xa

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :sswitch_d
    const-string v4, "S_HDMV/PGS"

    .line 552
    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-eqz v3, :cond_13

    .line 558
    .line 559
    const/16 v2, 0x1f

    .line 560
    .line 561
    goto/16 :goto_5

    .line 562
    .line 563
    :sswitch_e
    const-string v4, "V_VP9"

    .line 564
    .line 565
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    if-eqz v3, :cond_13

    .line 570
    .line 571
    move v2, v8

    .line 572
    goto/16 :goto_5

    .line 573
    .line 574
    :sswitch_f
    const-string v4, "V_VP8"

    .line 575
    .line 576
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-eqz v3, :cond_13

    .line 581
    .line 582
    move v2, v7

    .line 583
    goto/16 :goto_5

    .line 584
    .line 585
    :sswitch_10
    const-string v5, "V_AV1"

    .line 586
    .line 587
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-eqz v3, :cond_13

    .line 592
    .line 593
    move v2, v4

    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :sswitch_11
    const-string v4, "A_DTS"

    .line 597
    .line 598
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-eqz v3, :cond_13

    .line 603
    .line 604
    const/16 v2, 0x13

    .line 605
    .line 606
    goto/16 :goto_5

    .line 607
    .line 608
    :sswitch_12
    const-string v4, "A_AC3"

    .line 609
    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    if-eqz v3, :cond_13

    .line 615
    .line 616
    const/16 v2, 0x10

    .line 617
    .line 618
    goto/16 :goto_5

    .line 619
    .line 620
    :sswitch_13
    const-string v4, "A_AAC"

    .line 621
    .line 622
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_13

    .line 627
    .line 628
    const/16 v2, 0xd

    .line 629
    .line 630
    goto/16 :goto_5

    .line 631
    .line 632
    :sswitch_14
    const-string v4, "A_DTS/LOSSLESS"

    .line 633
    .line 634
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-eqz v3, :cond_13

    .line 639
    .line 640
    const/16 v2, 0x15

    .line 641
    .line 642
    goto/16 :goto_5

    .line 643
    .line 644
    :sswitch_15
    const-string v4, "S_VOBSUB"

    .line 645
    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_13

    .line 651
    .line 652
    const/16 v2, 0x1e

    .line 653
    .line 654
    goto/16 :goto_5

    .line 655
    .line 656
    :sswitch_16
    const-string v4, "V_MPEG4/ISO/AVC"

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_13

    .line 663
    .line 664
    const/4 v2, 0x7

    .line 665
    goto/16 :goto_5

    .line 666
    .line 667
    :sswitch_17
    const-string v4, "V_MPEG4/ISO/ASP"

    .line 668
    .line 669
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-eqz v3, :cond_13

    .line 674
    .line 675
    const/4 v2, 0x5

    .line 676
    goto :goto_5

    .line 677
    :sswitch_18
    const-string v4, "S_DVBSUB"

    .line 678
    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_13

    .line 684
    .line 685
    const/16 v2, 0x20

    .line 686
    .line 687
    goto :goto_5

    .line 688
    :sswitch_19
    const-string v4, "V_MS/VFW/FOURCC"

    .line 689
    .line 690
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-eqz v3, :cond_13

    .line 695
    .line 696
    const/16 v2, 0x9

    .line 697
    .line 698
    goto :goto_5

    .line 699
    :sswitch_1a
    const-string v4, "A_MPEG/L3"

    .line 700
    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    if-eqz v3, :cond_13

    .line 706
    .line 707
    const/16 v2, 0xf

    .line 708
    .line 709
    goto :goto_5

    .line 710
    :sswitch_1b
    const-string v4, "A_MPEG/L2"

    .line 711
    .line 712
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_13

    .line 717
    .line 718
    const/16 v2, 0xe

    .line 719
    .line 720
    goto :goto_5

    .line 721
    :sswitch_1c
    const-string v4, "A_VORBIS"

    .line 722
    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-eqz v3, :cond_13

    .line 728
    .line 729
    const/16 v2, 0xc

    .line 730
    .line 731
    goto :goto_5

    .line 732
    :sswitch_1d
    const-string v4, "A_TRUEHD"

    .line 733
    .line 734
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    if-eqz v3, :cond_13

    .line 739
    .line 740
    const/16 v2, 0x12

    .line 741
    .line 742
    goto :goto_5

    .line 743
    :sswitch_1e
    const-string v4, "A_MS/ACM"

    .line 744
    .line 745
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    if-eqz v3, :cond_13

    .line 750
    .line 751
    const/16 v2, 0x17

    .line 752
    .line 753
    goto :goto_5

    .line 754
    :sswitch_1f
    const-string v4, "V_MPEG4/ISO/SP"

    .line 755
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_13

    .line 761
    .line 762
    const/4 v2, 0x4

    .line 763
    goto :goto_5

    .line 764
    :sswitch_20
    const-string v4, "V_MPEG4/ISO/AP"

    .line 765
    .line 766
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    if-eqz v3, :cond_13

    .line 771
    .line 772
    const/4 v2, 0x6

    .line 773
    :cond_13
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 774
    .line 775
    .line 776
    goto :goto_6

    .line 777
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 778
    .line 779
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzd:I

    .line 780
    .line 781
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaho;->zze(Lcom/google/android/gms/internal/ads/zzadq;I)V

    .line 782
    .line 783
    .line 784
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 785
    .line 786
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzd:I

    .line 787
    .line 788
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    :goto_6
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 792
    .line 793
    return-void

    .line 794
    :cond_14
    const-string v1, "CodecId is missing in TrackEntry element"

    .line 795
    .line 796
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    throw v1

    .line 801
    :cond_15
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 802
    .line 803
    if-ne v1, v4, :cond_1b

    .line 804
    .line 805
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzh:Landroid/util/SparseArray;

    .line 806
    .line 807
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzU:I

    .line 808
    .line 809
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 814
    .line 815
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaho;->zzd(Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 816
    .line 817
    .line 818
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzZ:J

    .line 819
    .line 820
    cmp-long v2, v2, v9

    .line 821
    .line 822
    if-lez v2, :cond_16

    .line 823
    .line 824
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    if-eqz v2, :cond_16

    .line 831
    .line 832
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzu:Lcom/google/android/gms/internal/ads/zzek;

    .line 833
    .line 834
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 839
    .line 840
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzZ:J

    .line 845
    .line 846
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    array-length v4, v3

    .line 855
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 856
    .line 857
    .line 858
    :cond_16
    move v2, v7

    .line 859
    move v3, v2

    .line 860
    :goto_7
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 861
    .line 862
    if-ge v2, v4, :cond_17

    .line 863
    .line 864
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 865
    .line 866
    aget v4, v4, v2

    .line 867
    .line 868
    add-int/2addr v3, v4

    .line 869
    add-int/2addr v2, v8

    .line 870
    goto :goto_7

    .line 871
    :cond_17
    move v2, v7

    .line 872
    :goto_8
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzS:I

    .line 873
    .line 874
    if-ge v2, v4, :cond_1a

    .line 875
    .line 876
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzP:J

    .line 877
    .line 878
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzf:I

    .line 879
    .line 880
    mul-int/2addr v6, v2

    .line 881
    div-int/lit16 v6, v6, 0x3e8

    .line 882
    .line 883
    int-to-long v9, v6

    .line 884
    add-long/2addr v4, v9

    .line 885
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzW:I

    .line 886
    .line 887
    if-nez v2, :cond_19

    .line 888
    .line 889
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzY:Z

    .line 890
    .line 891
    if-nez v2, :cond_18

    .line 892
    .line 893
    or-int/2addr v6, v8

    .line 894
    :cond_18
    move v9, v7

    .line 895
    goto :goto_9

    .line 896
    :cond_19
    move v9, v2

    .line 897
    :goto_9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzT:[I

    .line 898
    .line 899
    aget v2, v2, v9

    .line 900
    .line 901
    sub-int/2addr v3, v2

    .line 902
    move-wide/from16 v18, v4

    .line 903
    .line 904
    move v5, v2

    .line 905
    move v4, v6

    .line 906
    move v6, v3

    .line 907
    move-wide/from16 v2, v18

    .line 908
    .line 909
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzahq;->zzu(Lcom/google/android/gms/internal/ads/zzaho;JIII)V

    .line 910
    .line 911
    .line 912
    add-int/lit8 v2, v9, 0x1

    .line 913
    .line 914
    move v3, v6

    .line 915
    goto :goto_8

    .line 916
    :cond_1a
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzO:I

    .line 917
    .line 918
    :cond_1b
    :goto_a
    return-void

    .line 919
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(ID)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/16 v0, 0xb5

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x4489

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    double-to-float p2, p2

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 21
    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzv:F

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    double-to-float p2, p2

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 30
    .line 31
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    double-to-float p2, p2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 39
    .line 40
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzt:F

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_3
    double-to-float p2, p2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 48
    .line 49
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzN:F

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_4
    double-to-float p2, p2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 57
    .line 58
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzM:F

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_5
    double-to-float p2, p2

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 66
    .line 67
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzL:F

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_6
    double-to-float p2, p2

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 75
    .line 76
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzK:F

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_7
    double-to-float p2, p2

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 84
    .line 85
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzJ:F

    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_8
    double-to-float p2, p2

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 93
    .line 94
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzI:F

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_9
    double-to-float p2, p2

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 102
    .line 103
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzH:F

    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_a
    double-to-float p2, p2

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 111
    .line 112
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzG:F

    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_b
    double-to-float p2, p2

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 120
    .line 121
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzF:F

    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_c
    double-to-float p2, p2

    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 129
    .line 130
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzE:F

    .line 131
    .line 132
    return-void

    .line 133
    :cond_0
    double-to-long p1, p2

    .line 134
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzz:J

    .line 135
    .line 136
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 141
    .line 142
    double-to-int p2, p2

    .line 143
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzR:I

    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(IJ)V
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/16 v0, 0x5031

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, " not supported"

    .line 5
    .line 6
    if-eq p1, v0, :cond_13

    .line 7
    .line 8
    const/16 v0, 0x5032

    .line 9
    .line 10
    const-wide/16 v3, 0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_11

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x2

    .line 17
    const/4 v7, 0x1

    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :pswitch_0
    long-to-int p2, p2

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 32
    .line 33
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzD:I

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    long-to-int p2, p2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 41
    .line 42
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzC:I

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    long-to-int p2, p2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 50
    .line 51
    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzy:Z

    .line 52
    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eq p1, v0, :cond_14

    .line 58
    .line 59
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 60
    .line 61
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzz:I

    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3
    long-to-int p2, p2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eq p1, v0, :cond_14

    .line 73
    .line 74
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 75
    .line 76
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzA:I

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4
    long-to-int p2, p2

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 81
    .line 82
    .line 83
    if-eq p2, v7, :cond_1

    .line 84
    .line 85
    if-eq p2, v6, :cond_0

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 90
    .line 91
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzB:I

    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 95
    .line 96
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzB:I

    .line 97
    .line 98
    return-void

    .line 99
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzy:J

    .line 100
    .line 101
    return-void

    .line 102
    :sswitch_1
    long-to-int p2, p2

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 107
    .line 108
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzf:I

    .line 109
    .line 110
    return-void

    .line 111
    :sswitch_2
    long-to-int p2, p2

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 113
    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    if-eq p2, v7, :cond_4

    .line 118
    .line 119
    if-eq p2, v6, :cond_3

    .line 120
    .line 121
    if-eq p2, v5, :cond_2

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 126
    .line 127
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzs:I

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 131
    .line 132
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzs:I

    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 136
    .line 137
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzs:I

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 141
    .line 142
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzs:I

    .line 143
    .line 144
    return-void

    .line 145
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzZ:J

    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_4
    long-to-int p2, p2

    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 153
    .line 154
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzQ:I

    .line 155
    .line 156
    return-void

    .line 157
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 161
    .line 162
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzT:J

    .line 163
    .line 164
    return-void

    .line 165
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 169
    .line 170
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzS:J

    .line 171
    .line 172
    return-void

    .line 173
    :sswitch_7
    long-to-int p2, p2

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 178
    .line 179
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzg:I

    .line 180
    .line 181
    return-void

    .line 182
    :sswitch_8
    long-to-int p2, p2

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 187
    .line 188
    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzy:Z

    .line 189
    .line 190
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    .line 191
    .line 192
    return-void

    .line 193
    :sswitch_9
    cmp-long p2, p2, v3

    .line 194
    .line 195
    if-nez p2, :cond_6

    .line 196
    .line 197
    move v0, v7

    .line 198
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 202
    .line 203
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzV:Z

    .line 204
    .line 205
    return-void

    .line 206
    :sswitch_a
    long-to-int p2, p2

    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 211
    .line 212
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzq:I

    .line 213
    .line 214
    return-void

    .line 215
    :sswitch_b
    long-to-int p2, p2

    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 220
    .line 221
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    .line 222
    .line 223
    return-void

    .line 224
    :sswitch_c
    long-to-int p2, p2

    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 229
    .line 230
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    .line 231
    .line 232
    return-void

    .line 233
    :sswitch_d
    long-to-int p2, p2

    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 235
    .line 236
    .line 237
    if-eqz p2, :cond_a

    .line 238
    .line 239
    if-eq p2, v7, :cond_9

    .line 240
    .line 241
    if-eq p2, v5, :cond_8

    .line 242
    .line 243
    const/16 p1, 0xf

    .line 244
    .line 245
    if-eq p2, p1, :cond_7

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 250
    .line 251
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:I

    .line 252
    .line 253
    return-void

    .line 254
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 255
    .line 256
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:I

    .line 257
    .line 258
    return-void

    .line 259
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 260
    .line 261
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:I

    .line 262
    .line 263
    return-void

    .line 264
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 265
    .line 266
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:I

    .line 267
    .line 268
    return-void

    .line 269
    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 270
    .line 271
    add-long/2addr p2, v0

    .line 272
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzF:J

    .line 273
    .line 274
    return-void

    .line 275
    :sswitch_f
    cmp-long p1, p2, v3

    .line 276
    .line 277
    if-nez p1, :cond_b

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v0, "AESSettingsCipherMode "

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    throw p1

    .line 306
    :sswitch_10
    const-wide/16 v3, 0x5

    .line 307
    .line 308
    cmp-long p1, p2, v3

    .line 309
    .line 310
    if-nez p1, :cond_c

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v0, "ContentEncAlgo "

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    throw p1

    .line 339
    :sswitch_11
    cmp-long p1, p2, v3

    .line 340
    .line 341
    if-nez p1, :cond_d

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v0, "EBMLReadVersion "

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    throw p1

    .line 370
    :sswitch_12
    cmp-long p1, p2, v3

    .line 371
    .line 372
    if-ltz p1, :cond_e

    .line 373
    .line 374
    const-wide/16 v3, 0x2

    .line 375
    .line 376
    cmp-long p1, p2, v3

    .line 377
    .line 378
    if-gtz p1, :cond_e

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v0, "DocTypeReadVersion "

    .line 388
    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    throw p1

    .line 407
    :sswitch_13
    const-wide/16 v3, 0x3

    .line 408
    .line 409
    cmp-long p1, p2, v3

    .line 410
    .line 411
    if-nez p1, :cond_f

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v0, "ContentCompAlgo "

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    throw p1

    .line 440
    :sswitch_14
    long-to-int p2, p2

    .line 441
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 445
    .line 446
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaho;->zzb(Lcom/google/android/gms/internal/ads/zzaho;I)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :sswitch_15
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzY:Z

    .line 451
    .line 452
    return-void

    .line 453
    :sswitch_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzM:Z

    .line 454
    .line 455
    if-nez v0, :cond_14

    .line 456
    .line 457
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzs(I)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzL:Lcom/google/android/gms/internal/ads/zzdy;

    .line 461
    .line 462
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdy;->zzc(J)V

    .line 463
    .line 464
    .line 465
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzM:Z

    .line 466
    .line 467
    return-void

    .line 468
    :sswitch_17
    long-to-int p1, p2

    .line 469
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzX:I

    .line 470
    .line 471
    return-void

    .line 472
    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzr(J)J

    .line 473
    .line 474
    .line 475
    move-result-wide p1

    .line 476
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzJ:J

    .line 477
    .line 478
    return-void

    .line 479
    :sswitch_19
    long-to-int p2, p2

    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 481
    .line 482
    .line 483
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 484
    .line 485
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzd:I

    .line 486
    .line 487
    return-void

    .line 488
    :sswitch_1a
    long-to-int p2, p2

    .line 489
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 493
    .line 494
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzn:I

    .line 495
    .line 496
    return-void

    .line 497
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzs(I)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzK:Lcom/google/android/gms/internal/ads/zzdy;

    .line 501
    .line 502
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzr(J)J

    .line 503
    .line 504
    .line 505
    move-result-wide p2

    .line 506
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdy;->zzc(J)V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :sswitch_1c
    long-to-int p2, p2

    .line 511
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 512
    .line 513
    .line 514
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 515
    .line 516
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    .line 517
    .line 518
    return-void

    .line 519
    :sswitch_1d
    long-to-int p2, p2

    .line 520
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 524
    .line 525
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    .line 526
    .line 527
    return-void

    .line 528
    :sswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->zzr(J)J

    .line 529
    .line 530
    .line 531
    move-result-wide p1

    .line 532
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzQ:J

    .line 533
    .line 534
    return-void

    .line 535
    :sswitch_1f
    cmp-long p2, p2, v3

    .line 536
    .line 537
    if-nez p2, :cond_10

    .line 538
    .line 539
    move v0, v7

    .line 540
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 541
    .line 542
    .line 543
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 544
    .line 545
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Z

    .line 546
    .line 547
    return-void

    .line 548
    :sswitch_20
    long-to-int p2, p2

    .line 549
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 550
    .line 551
    .line 552
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 553
    .line 554
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    .line 555
    .line 556
    return-void

    .line 557
    :cond_11
    cmp-long p1, p2, v3

    .line 558
    .line 559
    if-nez p1, :cond_12

    .line 560
    .line 561
    goto :goto_0

    .line 562
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    const-string v0, "ContentEncodingScope "

    .line 568
    .line 569
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    throw p1

    .line 587
    :cond_13
    const-wide/16 v3, 0x0

    .line 588
    .line 589
    cmp-long p1, p2, v3

    .line 590
    .line 591
    if-nez p1, :cond_15

    .line 592
    .line 593
    :cond_14
    :goto_0
    return-void

    .line 594
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string v0, "ContentEncodingOrder "

    .line 600
    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    throw p1

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzm(IJJ)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eq p1, v0, :cond_c

    .line 12
    .line 13
    const/16 v0, 0xae

    .line 14
    .line 15
    if-eq p1, v0, :cond_b

    .line 16
    .line 17
    const/16 v0, 0xbb

    .line 18
    .line 19
    if-eq p1, v0, :cond_a

    .line 20
    .line 21
    const/16 v0, 0x4dbb

    .line 22
    .line 23
    const-wide/16 v4, -0x1

    .line 24
    .line 25
    if-eq p1, v0, :cond_9

    .line 26
    .line 27
    const/16 v0, 0x5035

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eq p1, v0, :cond_8

    .line 31
    .line 32
    const/16 v0, 0x55d0

    .line 33
    .line 34
    if-eq p1, v0, :cond_7

    .line 35
    .line 36
    const v0, 0x18538067

    .line 37
    .line 38
    .line 39
    if-eq p1, v0, :cond_4

    .line 40
    .line 41
    const p2, 0x1c53bb6b

    .line 42
    .line 43
    .line 44
    if-eq p1, p2, :cond_3

    .line 45
    .line 46
    const p2, 0x1f43b675

    .line 47
    .line 48
    .line 49
    if-eq p1, p2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzD:Z

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzi:Z

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzH:J

    .line 61
    .line 62
    cmp-long p1, p1, v4

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzG:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzaj:Lcom/google/android/gms/internal/ads/zzadq;

    .line 70
    .line 71
    new-instance p2, Lcom/google/android/gms/internal/ads/zzael;

    .line 72
    .line 73
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzA:J

    .line 74
    .line 75
    invoke-direct {p2, p3, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 79
    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzD:Z

    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 85
    .line 86
    const/16 p2, 0x20

    .line 87
    .line 88
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzK:Lcom/google/android/gms/internal/ads/zzdy;

    .line 92
    .line 93
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 94
    .line 95
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzL:Lcom/google/android/gms/internal/ads/zzdy;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 102
    .line 103
    cmp-long p1, v0, v4

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    cmp-long p1, v0, p2

    .line 108
    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const-string p1, "Multiple Segment elements not supported"

    .line 113
    .line 114
    const/4 p2, 0x0

    .line 115
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    throw p1

    .line 120
    :cond_6
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzx:J

    .line 121
    .line 122
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzw:J

    .line 123
    .line 124
    return-void

    .line 125
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 129
    .line 130
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzy:Z

    .line 131
    .line 132
    return-void

    .line 133
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 137
    .line 138
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzh:Z

    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzE:I

    .line 143
    .line 144
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzF:J

    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzM:Z

    .line 148
    .line 149
    return-void

    .line 150
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 151
    .line 152
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaho;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 156
    .line 157
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzB:Z

    .line 158
    .line 159
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zza:Z

    .line 160
    .line 161
    return-void

    .line 162
    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzY:Z

    .line 163
    .line 164
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzZ:J

    .line 165
    .line 166
    return-void
.end method

.method public final zzn(ILjava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/16 v0, 0x86

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x4282

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x536e

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const v0, 0x22b59c

    .line 14
    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaho;->zzc(Lcom/google/android/gms/internal/ads/zzaho;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 32
    .line 33
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string p1, "webm"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    const-string v0, "matroska"

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v0, "DocType "

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, " not supported"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    throw p1

    .line 81
    :cond_4
    :goto_0
    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzB:Z

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zzt(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->zzC:Lcom/google/android/gms/internal/ads/zzaho;

    .line 92
    .line 93
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Ljava/lang/String;

    .line 94
    .line 95
    return-void
.end method
