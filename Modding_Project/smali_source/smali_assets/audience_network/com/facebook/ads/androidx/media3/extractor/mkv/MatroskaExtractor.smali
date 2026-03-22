.class public final Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kp;,
        Lcom/facebook/ads/redexgen/X/IC;,
        Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0t:[B

.field public static A0u:[Ljava/lang/String;

.field public static final A0v:Lcom/facebook/ads/redexgen/X/Gb;

.field public static final A0w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0x:Ljava/util/UUID;

.field public static final A0y:[B

.field public static final A0z:[B

.field public static final A10:[B

.field public static final A11:[B


# instance fields
.field public A00:B

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:J

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:J

.field public A0O:J

.field public A0P:Landroid/util/SparseArray;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Removed the final from the member variable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IC;",
            ">;"
        }
    .end annotation
.end field

.field public A0Q:Lcom/facebook/ads/redexgen/X/45;

.field public A0R:Lcom/facebook/ads/redexgen/X/45;

.field public A0S:Lcom/facebook/ads/redexgen/X/GY;

.field public A0T:Lcom/facebook/ads/redexgen/X/IC;

.field public A0U:Ljava/lang/String;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "AR/VC customizations"
    .end annotation
.end field

.field public A0V:Ljava/nio/ByteBuffer;

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z

.field public A0e:Z

.field public A0f:[I

.field public final A0g:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0h:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0i:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0j:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0k:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0l:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0m:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0n:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0o:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0p:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0q:Lcom/facebook/ads/redexgen/X/I9;

.field public final A0r:Lcom/facebook/ads/redexgen/X/IE;

.field public final A0s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 3069
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tBqjpPNwSsfRjGbhoSofYeEQJAfxpzeJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SQ32k5yHiSqu0tF5bV2mYZI8q27OK2Wk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ew8EcvFtYPYsbuW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MeCkyRYcfoGShRSoQHq7qyLBTkTGcoSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UyV8GtaWyEclMV8OhG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yLkQb0Xo1O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PFhexnCJ0GZtqtRWjlJ7uY4w9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UodjFtXG6f6h7NmMQ857"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kq;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0v:Lcom/facebook/ads/redexgen/X/Gb;

    .line 3070
    const/16 v3, 0x20

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A10:[B

    .line 3071
    const/16 v2, 0x2d9

    const/16 v1, 0x5a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0y:[B

    .line 3072
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0z:[B

    .line 3073
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A11:[B

    .line 3074
    const-wide v3, 0x100000000001000L

    const-wide v1, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0x:Ljava/util/UUID;

    .line 3075
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3076
    .local v0, "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x505

    const/16 v1, 0x12

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x517

    const/16 v1, 0x12

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x529

    const/16 v1, 0x12

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    const/16 v0, 0x10e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x53b

    const/16 v1, 0x12

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0w:Ljava/util/Map;

    .line 3081
    .end local v0    # "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void

    nop

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
    .locals 1

    .line 94668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .line 94669
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 94670
    new-instance v0, Lcom/facebook/ads/redexgen/X/kr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kr;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Lcom/facebook/ads/redexgen/X/I9;I)V

    .line 94671
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I9;I)V
    .locals 4

    .line 94672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94673
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    .line 94674
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    .line 94675
    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I:J

    .line 94676
    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    .line 94677
    iput-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0H:J

    .line 94678
    iput-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L:J

    .line 94679
    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0G:J

    .line 94680
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0q:Lcom/facebook/ads/redexgen/X/I9;

    .line 94681
    iget-object v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0q:Lcom/facebook/ads/redexgen/X/I9;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/kp;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/kp;-><init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;Lcom/facebook/ads/redexgen/X/IA;)V

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/I9;->AA5(Lcom/facebook/ads/redexgen/X/I8;)V

    .line 94682
    and-int/lit8 v0, p2, 0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0s:Z

    .line 94683
    new-instance v0, Lcom/facebook/ads/redexgen/X/IE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IE;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0r:Lcom/facebook/ads/redexgen/X/IE;

    .line 94684
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    .line 94685
    const/4 v3, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    .line 94686
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0p:Lcom/facebook/ads/redexgen/X/4J;

    .line 94687
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0m:Lcom/facebook/ads/redexgen/X/4J;

    .line 94688
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0j:Lcom/facebook/ads/redexgen/X/4J;

    .line 94689
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0i:Lcom/facebook/ads/redexgen/X/4J;

    .line 94690
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    .line 94691
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    .line 94692
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0g:Lcom/facebook/ads/redexgen/X/4J;

    .line 94693
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0h:Lcom/facebook/ads/redexgen/X/4J;

    .line 94694
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    .line 94695
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    .line 94696
    return-void

    .line 94697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 94698
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94699
    .local v0, "sampleSize":I
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A()V

    .line 94700
    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/H1;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94701
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    .line 94702
    .local v0, "strippedBytesLeft":I
    if-lez v0, :cond_0

    .line 94703
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94704
    .local v1, "bytesWritten":I
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {p2, v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94705
    .restart local v1    # "bytesWritten":I
    :goto_0
    return v1

    .line 94706
    .end local v1    # "bytesWritten":I
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v1

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/IC;IZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 94707
    move-object v4, p0

    const/16 v2, 0x3f4

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94708
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A10:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F(Lcom/facebook/ads/redexgen/X/lN;[BI)V

    .line 94709
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00()I

    move-result v0

    return v0

    .line 94710
    :cond_0
    const/16 v5, 0x3ea

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "Q42iXR6evmRi7JQ7PxfR7toxYIITwFkY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x65

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94711
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0z:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F(Lcom/facebook/ads/redexgen/X/lN;[BI)V

    .line 94712
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00()I

    move-result v0

    return v0

    .line 94713
    :cond_1
    const/16 v2, 0x3ff

    const/16 v1, 0xd

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94714
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A11:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F(Lcom/facebook/ads/redexgen/X/lN;[BI)V

    .line 94715
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00()I

    move-result v0

    return v0

    .line 94716
    :cond_2
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/IC;->A0b:Lcom/facebook/ads/redexgen/X/H1;

    .line 94717
    .local v4, "output":Lcom/facebook/ads/redexgen/X/H1;
    iget-boolean v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Y:Z

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_15

    .line 94718
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0i:Z

    if-eqz v0, :cond_12

    .line 94719
    iget v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    .line 94720
    iget-boolean v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0b:Z

    const/16 v2, 0x80

    if-nez v0, :cond_3

    .line 94721
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v7}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94722
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94723
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_11

    .line 94724
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v6

    iput-byte v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00:B

    .line 94725
    iput-boolean v7, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0b:Z

    .line 94726
    :cond_3
    iget-byte v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00:B

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_c

    const/4 v0, 0x1

    .line 94727
    .local v5, "isEncrypted":Z
    :goto_0
    if-eqz v0, :cond_13

    .line 94728
    iget-byte v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00:B

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_b

    const/4 v11, 0x1

    .line 94729
    .local v11, "hasSubsampleEncryption":Z
    :goto_1
    iget v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    .line 94730
    iget-boolean v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Z:Z

    if-nez v0, :cond_4

    .line 94731
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0g:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v10

    const/16 v1, 0x8

    sget-object v9, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v8, v9, v0

    const/4 v0, 0x0

    aget-object v9, v9, v0

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v8, v0, :cond_9

    sget-object v9, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v8, "0YZVfaON5K"

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const-string v8, "Vpm73VVBoM5AMHA6BL8GPMDLM"

    const/4 v0, 0x6

    aput-object v8, v9, v0

    invoke-interface {p1, v10, v6, v1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94732
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94733
    iput-boolean v7, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Z:Z

    .line 94734
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    .line 94735
    if-eqz v11, :cond_a

    :goto_2
    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 94736
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94737
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v3, v0, v7, v7}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 94738
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94739
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0g:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94740
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0g:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v3, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 94741
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94742
    :cond_4
    if-eqz v11, :cond_13

    .line 94743
    iget-boolean v8, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0a:Z

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "IbloDRbaqkSTIb2EEG1BJ7I1x09YBoFC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v8, :cond_5

    .line 94744
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v7}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94745
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94746
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94747
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    .line 94748
    iput-boolean v7, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0a:Z

    .line 94749
    :cond_5
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    mul-int/lit8 v1, v0, 0x4

    .line 94750
    .local v10, "samplePartitionDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94751
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94752
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94753
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    div-int/2addr v0, v5

    add-int/2addr v0, v7

    int-to-short v1, v0

    .line 94754
    .local p0, "subsampleCount":S
    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v5

    .line 94755
    .local p1, "subsampleDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    .line 94756
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v7, :cond_7

    .line 94757
    :cond_6
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    .line 94758
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94759
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94760
    const/4 v11, 0x0

    .line 94761
    .local p2, "partitionOffset":I
    const/4 v6, 0x0

    .local p3, "i":I
    :goto_3
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    if-ge v6, v0, :cond_e

    .line 94762
    move v10, v11

    .line 94763
    .local v6, "previousPartitionOffset":I
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v11

    .line 94764
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_8

    .line 94765
    iget-object v9, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    sub-int v0, v11, v10

    int-to-short v8, v0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "ft008TAv7G"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "haHnc3qulCtaE6iMk670OeuEn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94766
    .end local v6    # "previousPartitionOffset":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 94767
    :cond_8
    iget-object v8, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "aiG4mSAFtmR28a0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "af0fkPAZLGHpLmON09"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-int v0, v11, v10

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_9
    invoke-interface {p1, v10, v6, v1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94768
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94769
    iput-boolean v7, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Z:Z

    .line 94770
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    .line 94771
    if-eqz v11, :cond_a

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 94772
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 94773
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94774
    .end local p3    # "i":I
    :cond_e
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    sub-int v2, p3, v0

    sub-int/2addr v2, v11

    .line 94775
    .local v6, "finalPartitionSize":I
    iget v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    rem-int/2addr v1, v5

    const/4 v0, 0x1

    if-ne v1, v0, :cond_f

    .line 94776
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94777
    :goto_5
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0h:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 94778
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0h:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x1

    invoke-interface {v3, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 94779
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    goto :goto_6

    .line 94780
    :cond_f
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    int-to-short v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94781
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 94782
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94783
    :cond_11
    const/16 v2, 0x2b6

    const/16 v1, 0x23

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94784
    .end local v5    # "isEncrypted":Z
    .end local v6    # "finalPartitionSize":I
    .end local v10    # "samplePartitionDataSize":I
    .end local v11    # "hasSubsampleEncryption":Z
    .end local p0    # "subsampleCount":S
    .end local p1    # "subsampleDataSize":I
    .end local p2    # "partitionOffset":I
    :cond_12
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    if-eqz v0, :cond_13

    .line 94785
    iget-object v2, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    array-length v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 94786
    :cond_13
    :goto_6
    move/from16 v0, p4

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/IC;->A0A(Lcom/facebook/ads/redexgen/X/IC;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 94787
    iget v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    .line 94788
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94789
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v6

    add-int/2addr v6, p3

    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    sub-int/2addr v6, v0

    .line 94790
    .local v6, "sampleSize":I
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94791
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    shr-int/lit8 v0, v6, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x0

    aput-byte v1, v2, v0

    .line 94792
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    .line 94793
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    shr-int/lit8 v0, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 94794
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    and-int/lit16 v0, v6, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v2, v0

    .line 94795
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x4

    invoke-interface {v3, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 94796
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94797
    .end local v6    # "sampleSize":I
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Y:Z

    .line 94798
    :cond_15
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr p3, v0

    .line 94799
    .end local p7
    .local v3, "size":I
    const/16 v2, 0x4b7

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v6, 0x4d4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "azLjDRwnDORtAkbJr5UmBWWcvu9WrjdT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0x10

    const/16 v0, 0x2f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 94800
    :cond_16
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0i:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v8

    .line 94801
    .local v6, "nalLengthData":[B
    const/4 v1, 0x0

    aput-byte v1, v8, v1

    .line 94802
    const/4 v0, 0x1

    aput-byte v1, v8, v0

    .line 94803
    aput-byte v1, v8, v5

    .line 94804
    iget v7, p2, Lcom/facebook/ads/redexgen/X/IC;->A0Q:I

    .line 94805
    .local v7, "nalUnitLengthFieldLength":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0Q:I

    rsub-int/lit8 v6, v0, 0x4

    .line 94806
    .local v8, "nalUnitLengthFieldLengthDiff":I
    :goto_7
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    if-ge v0, p3, :cond_1c

    .line 94807
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    if-nez v0, :cond_18

    .line 94808
    invoke-direct {v4, p1, v8, v6, v7}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0G(Lcom/facebook/ads/redexgen/X/lN;[BII)V

    .line 94809
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94810
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0i:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94811
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0i:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    .line 94812
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0j:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94813
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0j:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v5, 0x4

    invoke-interface {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_17

    .line 94814
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "fro1mi6zSK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qDDF1oBUoQgRey5lTLsLsLE8f"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v5

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    goto :goto_7

    :cond_17
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "9yo0tJuahVLQaubMcBBhp2wjVELgngje"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v5

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    goto :goto_7

    .line 94815
    :cond_18
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    invoke-direct {v4, p1, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/H1;I)I

    move-result v1

    .line 94816
    .local v9, "bytesWritten":I
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94817
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94818
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    sub-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    .line 94819
    .end local v9    # "bytesWritten":I
    goto :goto_7

    .line 94820
    :cond_19
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0c:Lcom/facebook/ads/redexgen/X/H2;

    if-eqz v0, :cond_1a

    .line 94821
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 94822
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/IC;->A0c:Lcom/facebook/ads/redexgen/X/H2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H2;->A03(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 94823
    :cond_1a
    :goto_9
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    if-ge v0, p3, :cond_1c

    .line 94824
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    sub-int v0, p3, v0

    invoke-direct {v4, p1, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/H1;I)I

    move-result v1

    .line 94825
    .local v6, "bytesWritten":I
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94826
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94827
    .end local v6    # "bytesWritten":I
    goto :goto_9

    .line 94828
    :cond_1b
    const/4 v0, 0x0

    goto :goto_8

    .line 94829
    :cond_1c
    const/16 v2, 0x10f

    const/16 v1, 0x8

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1e

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "L5Y1ZRMfFWOxp58RZlemSr0Ie3cKRoNn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 94830
    :goto_a
    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0p:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94831
    iget-object v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0p:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x4

    invoke-interface {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94832
    iget v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94833
    :cond_1d
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00()I

    move-result v0

    return v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "6h0vzYYIjFmBqGs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2CBNjdNTCI84kXMqqr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_a

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94834
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 94835
    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 94836
    :cond_0
    const/16 v2, 0x117

    const/16 v1, 0x36

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/45;Lcom/facebook/ads/redexgen/X/45;)Lcom/facebook/ads/redexgen/X/Gw;
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding support AR/VR eventListener"
    .end annotation

    .line 94837
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 94839
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 94840
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    return-object v0

    .line 94841
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v6

    .line 94842
    .local v0, "cuePointsSize":I
    new-array v5, v6, [I

    .line 94843
    .local v1, "sizes":[I
    new-array v4, v6, [J

    .line 94844
    .local v2, "offsets":[J
    new-array v3, v6, [J

    .line 94845
    .local v3, "durationsUs":[J
    new-array v2, v6, [J

    .line 94846
    .local v4, "timesUs":[J
    const/4 v9, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 94847
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v0

    aput-wide v0, v2, v9

    .line 94848
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    invoke-virtual {p2, v9}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v7

    add-long/2addr v0, v7

    aput-wide v0, v4, v9

    .line 94849
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 94850
    .end local v5    # "i":I
    :cond_2
    const/4 v9, 0x0

    .restart local v5    # "i":I
    :goto_1
    add-int/lit8 v0, v6, -0x1

    if-ge v9, v0, :cond_4

    .line 94851
    add-int/lit8 v0, v9, 0x1

    aget-wide v0, v4, v0

    aget-wide v7, v4, v9

    sub-long/2addr v0, v7

    long-to-int v7, v0

    aput v7, v5, v9

    .line 94852
    add-int/lit8 v8, v9, 0x1

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3

    sget-object v7, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "EcqUdVdOszDxTX1GLg4Sg6FEnSFxXYEO"

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const-string v1, "f3IXvdxpqPdXnJQYi44axyFnZVKpD9LT"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    aget-wide v7, v2, v8

    aget-wide v0, v2, v9

    sub-long/2addr v7, v0

    aput-wide v7, v3, v9

    .line 94853
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94854
    .end local v5    # "i":I
    :cond_4
    add-int/lit8 v9, v6, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    iget-wide v7, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0N:J

    add-long/2addr v0, v7

    add-int/lit8 v7, v6, -0x1

    aget-wide v7, v4, v7

    sub-long/2addr v0, v7

    long-to-int v7, v0

    aput v7, v5, v9

    .line 94855
    add-int/lit8 v9, v6, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    add-int/lit8 v7, v6, -0x1

    aget-wide v7, v2, v7

    sub-long/2addr v0, v7

    aput-wide v0, v3, v9

    .line 94856
    add-int/lit8 v0, v6, -0x1

    aget-wide v0, v3, v0

    .line 94857
    .local v5, "lastDurationUs":J
    const-wide/16 v7, 0x0

    cmp-long v6, v0, v7

    if-gtz v6, :cond_5

    .line 94858
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x1f3

    const/16 v7, 0x34

    const/16 v6, 0x26

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x365

    const/16 v1, 0x11

    const/16 v0, 0x4f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 94859
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 94860
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 94861
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 94862
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 94863
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/lT;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/lT;-><init>([I[J[J[J)V

    return-object v0
.end method

.method private final A05(I)Lcom/facebook/ads/redexgen/X/IC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94864
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 94865
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0t:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07()Ljava/util/Map;
    .locals 1

    .line 94866
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0w:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A08()Ljava/util/UUID;
    .locals 1

    .line 94867
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0x:Ljava/util/UUID;

    return-object v0
.end method

.method private A09()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 94868
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94869
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 94870
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A08:I

    .line 94871
    iput v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09:I

    .line 94872
    iput v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A:I

    .line 94873
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Y:Z

    .line 94874
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0b:Z

    .line 94875
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0a:Z

    .line 94876
    iput v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0B:I

    .line 94877
    iput-byte v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A00:B

    .line 94878
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Z:Z

    .line 94879
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94880
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x563

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0t:[B

    return-void

    :array_0
    .array-data 1
        0x5at
        0x17t
        0xft
        0x9t
        0xet
        0x5at
        0x18t
        0x1ft
        0x5at
        0x13t
        0x14t
        0x5at
        0x1bt
        0x5at
        0x39t
        0xft
        0x1ft
        0x9t
        0x60t
        0x2dt
        0x35t
        0x33t
        0x34t
        0x60t
        0x22t
        0x25t
        0x60t
        0x29t
        0x2et
        0x60t
        0x21t
        0x60t
        0x14t
        0x32t
        0x21t
        0x23t
        0x2bt
        0x5t
        0x2et
        0x34t
        0x32t
        0x39t
        0x13t
        0x5dt
        0x5ct
        0x47t
        0x13t
        0x40t
        0x46t
        0x43t
        0x43t
        0x5ct
        0x41t
        0x47t
        0x56t
        0x57t
        0x6ft
        0x7at
        0x7bt
        0x2et
        0x70t
        0x6ft
        0x7at
        0x78t
        0x2et
        0x70t
        0x6ft
        0x7at
        0x78t
        0x2et
        0x70t
        0x6ft
        0x7at
        0x78t
        0x2et
        0x16t
        0x3t
        0x1t
        0x57t
        0x9t
        0x16t
        0x3t
        0x1t
        0x57t
        0x9t
        0x16t
        0x3t
        0x1t
        0x57t
        0x1ft
        0x16t
        0x3t
        0x0t
        0x57t
        0x13t
        0x6t
        0x4t
        0x52t
        0xct
        0x13t
        0x6t
        0x4t
        0x52t
        0xct
        0x13t
        0x6t
        0x4t
        0x52t
        0x18t
        0x13t
        0x6t
        0x5t
        0x52t
        0x0t
        0x4t
        0x12t
        0x12t
        0x24t
        0x35t
        0x35t
        0x28t
        0x2ft
        0x26t
        0x32t
        0x2t
        0x28t
        0x31t
        0x29t
        0x24t
        0x33t
        0xct
        0x2et
        0x25t
        0x24t
        0x61t
        0x5et
        0x40t
        0x5et
        0x5et
        0x5ct
        0x17t
        0x9t
        0x17t
        0x15t
        0x65t
        0x3at
        0x24t
        0x3ft
        0x2ft
        0x28t
        0x3at
        0x24t
        0x3ft
        0x2ft
        0x28t
        0x54t
        0x3et
        0x23t
        0x2bt
        0x29t
        0x3et
        0x28t
        0x28t
        0x50t
        0x4et
        0x55t
        0x45t
        0x42t
        0x3et
        0x5dt
        0x5et
        0x42t
        0x42t
        0x5dt
        0x54t
        0x42t
        0x42t
        0x78t
        0x66t
        0x7ct
        0x78t
        0x7at
        0xat
        0x6et
        0x70t
        0x69t
        0x63t
        0x6et
        0x6ct
        0x21t
        0x3ft
        0x2dt
        0x30t
        0x25t
        0x27t
        0x4ft
        0x2ct
        0x52t
        0x2t
        0x1ct
        0xet
        0x13t
        0x6t
        0x4t
        0x6ct
        0xft
        0x70t
        0x21t
        0x3ft
        0x2dt
        0x33t
        0x4ft
        0x21t
        0x23t
        0x2dt
        0x1ft
        0x1t
        0x11t
        0xet
        0xbt
        0xdt
        0x52t
        0x4ct
        0x43t
        0x50t
        0x5et
        0x3ct
        0x55t
        0x5ft
        0x5ct
        0x52t
        0x47t
        0x3ct
        0x5at
        0x56t
        0x56t
        0x56t
        0x52t
        0x4ct
        0x43t
        0x50t
        0x5et
        0x3ct
        0x5at
        0x5dt
        0x47t
        0x3ct
        0x51t
        0x5at
        0x54t
        0xct
        0x12t
        0x1dt
        0xet
        0x0t
        0x62t
        0x4t
        0x3t
        0x19t
        0x62t
        0x1t
        0x4t
        0x19t
        0x74t
        0x6at
        0x61t
        0x67t
        0x60t
        0x70t
        0x7dt
        0x71t
        0x38t
        0x26t
        0x2ft
        0x36t
        0x2bt
        0x3bt
        0x30t
        0x2at
        0x69t
        0x4bt
        0x44t
        0xdt
        0x5et
        0xat
        0x59t
        0x49t
        0x4bt
        0x46t
        0x4ft
        0xat
        0x5et
        0x43t
        0x47t
        0x4ft
        0x49t
        0x45t
        0x4et
        0x4ft
        0xat
        0x5at
        0x58t
        0x43t
        0x45t
        0x58t
        0xat
        0x5et
        0x45t
        0xat
        0x5et
        0x43t
        0x47t
        0x4ft
        0x49t
        0x45t
        0x4et
        0x4ft
        0x79t
        0x49t
        0x4bt
        0x46t
        0x4ft
        0xat
        0x48t
        0x4ft
        0x43t
        0x44t
        0x4dt
        0xat
        0x59t
        0x4ft
        0x5et
        0x4t
        0x5t
        0x29t
        0x22t
        0x23t
        0x25t
        0xft
        0x22t
        0x66t
        0x2ft
        0x35t
        0x66t
        0x2bt
        0x2ft
        0x35t
        0x35t
        0x2ft
        0x28t
        0x21t
        0x66t
        0x2ft
        0x28t
        0x66t
        0x12t
        0x34t
        0x27t
        0x25t
        0x2dt
        0x3t
        0x28t
        0x32t
        0x34t
        0x3ft
        0x66t
        0x23t
        0x2at
        0x23t
        0x2bt
        0x23t
        0x28t
        0x32t
        0x75t
        0x59t
        0x5bt
        0x54t
        0x5ft
        0x58t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x53t
        0x58t
        0x55t
        0x44t
        0x4ft
        0x46t
        0x42t
        0x5ft
        0x59t
        0x58t
        0x16t
        0x57t
        0x58t
        0x52t
        0x16t
        0x55t
        0x59t
        0x5bt
        0x46t
        0x44t
        0x53t
        0x45t
        0x45t
        0x5ft
        0x59t
        0x58t
        0x16t
        0x5ft
        0x45t
        0x16t
        0x58t
        0x59t
        0x42t
        0x16t
        0x45t
        0x43t
        0x46t
        0x46t
        0x59t
        0x44t
        0x42t
        0x53t
        0x52t
        0x56t
        0x7at
        0x7bt
        0x61t
        0x70t
        0x7bt
        0x61t
        0x56t
        0x7at
        0x78t
        0x65t
        0x54t
        0x79t
        0x72t
        0x7at
        0x35t
        0x6bt
        0x47t
        0x46t
        0x5ct
        0x4dt
        0x46t
        0x5ct
        0x6dt
        0x46t
        0x4bt
        0x69t
        0x44t
        0x4ft
        0x47t
        0x8t
        0x52t
        0x7et
        0x7ft
        0x65t
        0x74t
        0x7ft
        0x65t
        0x54t
        0x7ft
        0x72t
        0x7et
        0x75t
        0x78t
        0x7ft
        0x76t
        0x5et
        0x63t
        0x75t
        0x74t
        0x63t
        0x31t
        0x5ft
        0x73t
        0x72t
        0x68t
        0x79t
        0x72t
        0x68t
        0x59t
        0x72t
        0x7ft
        0x73t
        0x78t
        0x75t
        0x72t
        0x7bt
        0x4ft
        0x7ft
        0x73t
        0x6ct
        0x79t
        0x3ct
        0x6et
        0x43t
        0x59t
        0x49t
        0x4bt
        0x58t
        0x4et
        0x43t
        0x44t
        0x4dt
        0xat
        0x46t
        0x4bt
        0x59t
        0x5et
        0xat
        0x49t
        0x5ft
        0x4ft
        0xat
        0x5at
        0x45t
        0x43t
        0x44t
        0x5et
        0xat
        0x5dt
        0x43t
        0x5et
        0x42t
        0xat
        0x5ft
        0x44t
        0x4ft
        0x52t
        0x5at
        0x4ft
        0x49t
        0x5et
        0x4ft
        0x4et
        0xat
        0x4et
        0x5ft
        0x58t
        0x4bt
        0x5et
        0x43t
        0x45t
        0x44t
        0x10t
        0xat
        0xdt
        0x26t
        0x2at
        0x1dt
        0x30t
        0x39t
        0x2ct
        0x69t
        0x53t
        0x78t
        0x74t
        0x43t
        0x6et
        0x67t
        0x72t
        0x45t
        0x72t
        0x76t
        0x73t
        0x41t
        0x72t
        0x65t
        0x64t
        0x7et
        0x78t
        0x79t
        0x37t
        0x47t
        0x40t
        0x4ft
        0x4et
        0x22t
        0x6et
        0x63t
        0x61t
        0x6bt
        0x6ct
        0x65t
        0x22t
        0x71t
        0x63t
        0x6ft
        0x72t
        0x6et
        0x67t
        0x22t
        0x71t
        0x6bt
        0x78t
        0x67t
        0x22t
        0x6dt
        0x77t
        0x76t
        0x22t
        0x6dt
        0x64t
        0x22t
        0x70t
        0x63t
        0x6ct
        0x65t
        0x67t
        0x2ct
        0x33t
        0x34t
        0x3bt
        0x3at
        0x24t
        0x13t
        0x17t
        0x12t
        0x20t
        0x13t
        0x4t
        0x5t
        0x1ft
        0x19t
        0x18t
        0x56t
        0x1t
        0x28t
        0x21t
        0x29t
        0x21t
        0x2at
        0x30t
        0x64t
        0x77t
        0x5ct
        0x51t
        0x40t
        0x4bt
        0x42t
        0x46t
        0x57t
        0x56t
        0x12t
        0x66t
        0x40t
        0x53t
        0x51t
        0x59t
        0x12t
        0x54t
        0x5dt
        0x47t
        0x5ct
        0x56t
        0x12t
        0x50t
        0x47t
        0x46t
        0x12t
        0x71t
        0x5dt
        0x5ct
        0x46t
        0x57t
        0x5ct
        0x46t
        0x77t
        0x5ct
        0x51t
        0x79t
        0x57t
        0x4bt
        0x7bt
        0x76t
        0x12t
        0x45t
        0x53t
        0x41t
        0x12t
        0x5ct
        0x5dt
        0x46t
        0x12t
        0x54t
        0x5dt
        0x47t
        0x5ct
        0x56t
        0x47t
        0x7at
        0x76t
        0x67t
        0x6ct
        0x71t
        0x6bt
        0x6dt
        0x6ct
        0x22t
        0x60t
        0x6bt
        0x76t
        0x22t
        0x6bt
        0x71t
        0x22t
        0x71t
        0x67t
        0x76t
        0x22t
        0x6bt
        0x6ct
        0x22t
        0x71t
        0x6bt
        0x65t
        0x6ct
        0x63t
        0x6et
        0x22t
        0x60t
        0x7bt
        0x76t
        0x67t
        0x6ct
        0x45t
        0x58t
        0x47t
        0x4bt
        0x5et
        0x10t
        0xat
        0x79t
        0x5et
        0x4bt
        0x58t
        0x5et
        0x6t
        0xat
        0x6ft
        0x44t
        0x4et
        0x6t
        0xat
        0x78t
        0x4ft
        0x4bt
        0x4et
        0x65t
        0x58t
        0x4et
        0x4ft
        0x58t
        0x6t
        0xat
        0x66t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0x6t
        0xat
        0x79t
        0x5et
        0x53t
        0x46t
        0x4ft
        0x6t
        0xat
        0x64t
        0x4bt
        0x47t
        0x4ft
        0x6t
        0xat
        0x67t
        0x4bt
        0x58t
        0x4dt
        0x43t
        0x44t
        0x66t
        0x6t
        0xat
        0x67t
        0x4bt
        0x58t
        0x4dt
        0x43t
        0x44t
        0x78t
        0x6t
        0xat
        0x67t
        0x4bt
        0x58t
        0x4dt
        0x43t
        0x44t
        0x7ct
        0x6t
        0xat
        0x6ft
        0x4ct
        0x4ct
        0x4ft
        0x49t
        0x5et
        0x6t
        0xat
        0x7et
        0x4ft
        0x52t
        0x5et
        0x38t
        0x14t
        0x1bt
        0x11t
        0x14t
        0x1t
        0x1at
        0x7t
        0xct
        0x55t
        0x10t
        0x19t
        0x10t
        0x18t
        0x10t
        0x1bt
        0x1t
        0x55t
        0x26t
        0x10t
        0x10t
        0x1et
        0x3ct
        0x31t
        0x55t
        0x1at
        0x7t
        0x55t
        0x26t
        0x10t
        0x10t
        0x1et
        0x25t
        0x1at
        0x6t
        0x1ct
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x1bt
        0x1at
        0x1t
        0x55t
        0x13t
        0x1at
        0x0t
        0x1bt
        0x11t
        0xet
        0x22t
        0x37t
        0x31t
        0x2ct
        0x30t
        0x28t
        0x22t
        0x6t
        0x3bt
        0x37t
        0x31t
        0x22t
        0x20t
        0x37t
        0x2ct
        0x31t
        0x36t
        0xet
        0x17t
        0xft
        0x12t
        0xbt
        0x17t
        0x1et
        0x5bt
        0x28t
        0x1et
        0x1ct
        0x16t
        0x1et
        0x15t
        0xft
        0x5bt
        0x1et
        0x17t
        0x1et
        0x16t
        0x1et
        0x15t
        0xft
        0x8t
        0x5bt
        0x15t
        0x14t
        0xft
        0x5bt
        0x8t
        0xet
        0xbt
        0xbt
        0x14t
        0x9t
        0xft
        0x1et
        0x1ft
        0x20t
        0x1t
        0x4et
        0x18t
        0xft
        0x2t
        0x7t
        0xat
        0x4et
        0x1at
        0x1ct
        0xft
        0xdt
        0x5t
        0x1dt
        0x4et
        0x19t
        0xbt
        0x1ct
        0xbt
        0x4et
        0x8t
        0x1t
        0x1bt
        0x0t
        0xat
        0x5bt
        0x7at
        0x35t
        0x63t
        0x74t
        0x79t
        0x7ct
        0x71t
        0x35t
        0x63t
        0x74t
        0x67t
        0x7ct
        0x7bt
        0x61t
        0x35t
        0x79t
        0x70t
        0x7bt
        0x72t
        0x61t
        0x7dt
        0x35t
        0x78t
        0x74t
        0x66t
        0x7et
        0x35t
        0x73t
        0x7at
        0x60t
        0x7bt
        0x71t
        0x3dt
        0x31t
        0x2at
        0x38t
        0x2ct
        0x3dt
        0x3bt
        0x2ct
        0x69t
        0x65t
        0x72t
        0x7et
        0x77t
        0x6ct
        0x15t
        0x6at
        0x7dt
        0x69t
        0x3at
        0x36t
        0x3dt
        0x2ct
        0x31t
        0x3dt
        0x46t
        0x28t
        0x3at
        0x3at
        0x67t
        0x6bt
        0x60t
        0x71t
        0x6ct
        0x60t
        0x1bt
        0x61t
        0x60t
        0x72t
        0xct
        0x7ft
        0x73t
        0x78t
        0x69t
        0x74t
        0x78t
        0x3t
        0x7bt
        0x69t
        0x6et
        0x7at
        0x78t
        0x78t
        0x41t
        0x4dt
        0x44t
        0x5dt
        0x50t
        0x41t
        0x47t
        0x50t
        0x23t
        0x1bt
        0x19t
        0x0t
        0x0t
        0x19t
        0x1et
        0x17t
        0x50t
        0x3t
        0x5t
        0x12t
        0x4t
        0x19t
        0x4t
        0x1ct
        0x15t
        0x50t
        0x3t
        0x11t
        0x1dt
        0x0t
        0x1ct
        0x15t
        0x50t
        0x19t
        0x1et
        0x50t
        0x1ct
        0x11t
        0x13t
        0x15t
        0x14t
        0x50t
        0x12t
        0x1ct
        0x1ft
        0x13t
        0x1bt
        0x5et
        0x40t
        0x78t
        0x7at
        0x63t
        0x63t
        0x7at
        0x7dt
        0x74t
        0x33t
        0x60t
        0x66t
        0x71t
        0x67t
        0x7at
        0x67t
        0x7ft
        0x76t
        0x33t
        0x60t
        0x72t
        0x7et
        0x63t
        0x7ft
        0x76t
        0x33t
        0x64t
        0x7at
        0x67t
        0x7bt
        0x33t
        0x7dt
        0x7ct
        0x33t
        0x77t
        0x66t
        0x61t
        0x72t
        0x67t
        0x7at
        0x7ct
        0x7dt
        0x3dt
        0x51t
        0x6at
        0x61t
        0x7ct
        0x74t
        0x61t
        0x67t
        0x70t
        0x61t
        0x60t
        0x24t
        0x6dt
        0x60t
        0x3et
        0x24t
        0x9t
        0x32t
        0x39t
        0x24t
        0x2ct
        0x39t
        0x3ft
        0x28t
        0x39t
        0x38t
        0x7ct
        0x30t
        0x3dt
        0x3ft
        0x35t
        0x32t
        0x3bt
        0x7ct
        0x2at
        0x3dt
        0x30t
        0x29t
        0x39t
        0x66t
        0x7ct
        0x2dt
        0x24t
        0x3at
        0x2dt
        0x4at
        0x3et
        0x37t
        0x25t
        0x38t
        0x2dt
        0x2ft
        0x5at
        0x7at
        0x73t
        0x61t
        0x7ct
        0x69t
        0x6bt
        0x18t
        0x3t
        0x65t
        0x7ft
        0x63t
        0x3t
        0x6dt
        0x7ct
        0x66t
        0x6ft
        0x7dt
        0x60t
        0x75t
        0x77t
        0x4t
        0x1ft
        0x79t
        0x63t
        0x7ft
        0x1ft
        0x71t
        0x63t
        0x60t
        0x54t
        0x5dt
        0x4ft
        0x52t
        0x47t
        0x45t
        0x36t
        0x2dt
        0x4bt
        0x51t
        0x4dt
        0x2dt
        0x43t
        0x54t
        0x41t
        0x3ct
        0x35t
        0x27t
        0x3at
        0x2ft
        0x2dt
        0x5et
        0x45t
        0x23t
        0x39t
        0x25t
        0x45t
        0x39t
        0x3at
        0x75t
        0x7ct
        0x6et
        0x73t
        0x66t
        0x64t
        0x6bt
        0xct
        0x6at
        0x70t
        0x6ct
        0xct
        0x6bt
        0x66t
        0x75t
        0x60t
        0x4ct
        0x45t
        0x57t
        0x49t
        0x35t
        0x4ct
        0x5ct
        0x4dt
        0x35t
        0x5ct
        0x55t
        0x4ft
        0x48t
        0x59t
        0x59t
        0x45t
        0x4ct
        0x47t
        0x5bt
        0x56t
        0x5ct
        0x41t
        0x52t
        0x12t
        0x1bt
        0x12t
        0x14t
        0x7ct
        0x2t
        0xbt
        0x2t
        0x4t
        0x6dt
        0x4ft
        0x53t
        0x44t
        0x78t
        0x51t
        0x4et
        0x43t
        0x42t
        0x48t
        0x78t
        0x55t
        0x48t
        0x53t
        0x66t
        0xat
        0x17t
        0x17t
        0x17t
        0x34t
        0x28t
        0x3ft
        0x3t
        0x2at
        0x35t
        0x38t
        0x39t
        0x33t
        0x3t
        0x2et
        0x33t
        0x28t
        0x1dt
        0x71t
        0x6ct
        0x65t
        0x6ct
        0x38t
        0x24t
        0x33t
        0xft
        0x26t
        0x39t
        0x34t
        0x35t
        0x3ft
        0xft
        0x22t
        0x3ft
        0x24t
        0x11t
        0x7dt
        0x61t
        0x68t
        0x60t
        0x5dt
        0x41t
        0x56t
        0x6at
        0x43t
        0x5ct
        0x51t
        0x50t
        0x5at
        0x6at
        0x47t
        0x5at
        0x41t
        0x74t
        0x18t
        0x7t
        0x2t
        0x5t
        0x22t
        0x2et
        0x3bt
        0x3dt
        0x20t
        0x3ct
        0x24t
        0x2et
        0x38t
        0x27t
        0x2at
        0x2bt
        0x21t
        0x61t
        0x39t
        0x2bt
        0x2ct
        0x23t
        0x15t
        0x7t
        0x0t
        0xft
    .end array-data
.end method

.method private A0C(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 94881
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R:Lcom/facebook/ads/redexgen/X/45;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Q:Lcom/facebook/ads/redexgen/X/45;

    if-eqz v0, :cond_0

    .line 94882
    return-void

    .line 94883
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x277

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A0D(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 94884
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    if-eqz v0, :cond_0

    .line 94885
    return-void

    .line 94886
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x277

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x18

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/lN;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94887
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 94888
    return-void

    .line 94889
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 94890
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0c(I)V

    .line 94891
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94892
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 94893
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/lN;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94894
    array-length v2, p2

    add-int/2addr v2, p3

    .line 94895
    .local v0, "sizeWithPrefix":I
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 94896
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    add-int v0, v2, p3

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 94897
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    array-length v0, p2

    invoke-interface {p1, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94898
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94899
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 94900
    return-void

    .line 94901
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    array-length v0, p2

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/lN;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94902
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94903
    .local v0, "pendingStrippedBytes":I
    add-int v0, p3, v1

    sub-int/2addr p4, v1

    invoke-interface {p1, p2, v0, p4}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94904
    if-lez v1, :cond_0

    .line 94905
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0k:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p2, p3, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 94906
    :cond_0
    return-void
.end method

.method private final A0H(Lcom/facebook/ads/redexgen/X/IC;ILcom/facebook/ads/redexgen/X/lN;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94907
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    .line 94908
    const/16 v2, 0x500

    const/4 v1, 0x5

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94909
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94910
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p3, v1, v0, p4}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94911
    :goto_0
    return-void

    .line 94912
    :cond_0
    invoke-interface {p3, p4}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/IC;JIII)V
    .locals 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 94913
    move/from16 v11, p5

    move-object v3, p0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IC;->A0c:Lcom/facebook/ads/redexgen/X/H2;

    const/4 v2, 0x1

    move/from16 v12, p6

    move/from16 v10, p4

    move-wide/from16 v8, p2

    if-eqz v0, :cond_0

    .line 94914
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/IC;->A0c:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/IC;->A0b:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v13, p1, Lcom/facebook/ads/redexgen/X/IC;->A0a:Lcom/facebook/ads/redexgen/X/Gz;

    invoke-virtual/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/H2;->A04(Lcom/facebook/ads/redexgen/X/H1;JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 94915
    :goto_0
    iput-boolean v2, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0X:Z

    .line 94916
    return-void

    .line 94917
    :cond_0
    const/16 v4, 0x3f4

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    .line 94918
    const/16 v4, 0x3ea

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_b

    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "WUIRLQPYspP06jV"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "IKED97K2catgdGs9C7"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    .line 94919
    const/16 v4, 0x3ff

    const/16 v1, 0xd

    const/16 v0, 0x20

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94920
    :cond_1
    iget v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    const/16 v4, 0x365

    const/16 v1, 0x11

    const/16 v0, 0x4f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v7

    if-le v5, v2, :cond_6

    .line 94921
    const/16 v4, 0x414

    const/16 v1, 0x28

    const/16 v0, 0x7c

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 94922
    .end local p3
    .local v2, "size":I
    :cond_2
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_3

    .line 94923
    iget v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    if-le v0, v2, :cond_5

    .line 94924
    iget-object v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "YYsRZc3YFjjR6whUDZFnD2lR7qwR3xQu"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "iPCTe70V3RVZDGWrxpNWfBz9u5oW1N1r"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94925
    .end local v4
    :cond_3
    :goto_2
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/IC;->A0b:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v13, p1, Lcom/facebook/ads/redexgen/X/IC;->A0a:Lcom/facebook/ads/redexgen/X/Gz;

    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "aEC8Q2NERZhQKbY6SRlQy9B7oXJI5nDv"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "M5BYDTb0V4PW6b5ziiSZklpOYuXfea8a"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "dzMIMRhm8kdQoNm85GuPxt1OFbbjzRAM"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    goto :goto_2

    .line 94926
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v5

    .line 94927
    .local v4, "supplementalDataSize":I
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/IC;->A0b:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x2

    invoke-interface {v4, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 94928
    add-int/2addr v11, v5

    goto :goto_2

    .line 94929
    :cond_6
    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v5

    if-nez v4, :cond_7

    .line 94930
    const/16 v4, 0x43c

    const/16 v1, 0x2a

    const/16 v0, 0x1f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94931
    :cond_7
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D:J

    iget-object v4, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    invoke-static {v5, v0, v1, v4}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0K(Ljava/lang/String;J[B)V

    .line 94932
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    .local v2, "i":I
    :goto_3
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 94933
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v1

    if-nez v0, :cond_9

    .line 94934
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 94935
    .end local v2    # "i":I
    :cond_8
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/IC;->A0b:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-interface {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94936
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0n:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v11, v0

    goto/16 :goto_1

    .line 94937
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0J(Lcom/facebook/ads/redexgen/X/IC;Lcom/facebook/ads/redexgen/X/lN;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94938
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IC;->A00(Lcom/facebook/ads/redexgen/X/IC;)I

    move-result v1

    const v0, 0x64767643

    if-eq v1, v0, :cond_0

    .line 94939
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IC;->A00(Lcom/facebook/ads/redexgen/X/IC;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "z7J25JPdzWy80Kd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xEqpvZ1X3IvVWW9v69"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const v0, 0x64766343

    if-ne v3, v0, :cond_1

    .line 94940
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/IC;->A0k:[B

    .line 94941
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/IC;->A0k:[B

    const/4 v0, 0x0

    invoke-interface {p2, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94942
    :goto_0
    return-void

    .line 94943
    :cond_1
    invoke-interface {p2, p3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0K(Ljava/lang/String;J[B)V
    .locals 6

    .line 94944
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const-wide/16 v1, 0x3e8

    sget-object v5, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v4, v5, v0

    const/4 v0, 0x0

    aget-object v5, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v4, v0, :cond_1

    sget-object v5, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v4, "3I7Szd6Jo4OcbWqNbOfUGxKnAqqsYD1t"

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const-string v4, "pL7tYzN7WsijDsV9dRV4eebVOXyQpiyb"

    const/4 v0, 0x0

    aput-object v4, v5, v0

    packed-switch p0, :pswitch_data_0

    .line 94945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 94946
    :sswitch_0
    const/16 v2, 0x3f4

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x3ff

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "hOu1CB2frr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vZrPTqET3LPV3435yPIFppSrF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0xd

    const/16 v0, 0x20

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x3ea

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 94947
    :pswitch_0
    const/16 v5, 0x5e

    const/16 v4, 0x13

    const/16 v0, 0x3a

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O(JLjava/lang/String;J)[B

    move-result-object v2

    .line 94948
    .local v0, "endTimecode":[B
    const/16 v1, 0x19

    .line 94949
    .local v2, "endTimecodeOffset":I
    goto :goto_1

    .line 94950
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_1
    const/16 v2, 0x38

    const/16 v1, 0x13

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x2710

    invoke-static {p1, p2, v2, v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O(JLjava/lang/String;J)[B

    move-result-object v2

    .line 94951
    .restart local v0    # "endTimecode":[B
    const/16 v1, 0x15

    .line 94952
    .restart local v2    # "endTimecodeOffset":I
    goto :goto_1

    .line 94953
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_2
    const/16 v5, 0x4b

    const/16 v4, 0x13

    const/16 v0, 0x3f

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O(JLjava/lang/String;J)[B

    move-result-object v2

    .line 94954
    .restart local v0    # "endTimecode":[B
    const/16 v1, 0x13

    .line 94955
    .restart local v2    # "endTimecodeOffset":I
    :goto_1
    array-length v0, v2

    invoke-static {v2, v3, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94956
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/Gt;J)Z
    .locals 8

    .line 94957
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0c:Z

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 94958
    iput-wide p2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L:J

    .line 94959
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0H:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 94960
    iput-boolean v6, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0c:Z

    .line 94961
    return v7

    .line 94962
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0e:Z

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L:J

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 94963
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 94964
    iput-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L:J

    .line 94965
    return v7

    .line 94966
    :cond_1
    return v6
.end method

.method public static A0M(Ljava/lang/String;)Z
    .locals 8

    .line 94967
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 94968
    return v7

    .line 94969
    :sswitch_0
    const/16 v2, 0xd7

    const/4 v1, 0x6

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xb7

    const/4 v1, 0x6

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xb1

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x493

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x3f4

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x3ff

    const/16 v4, 0xd

    const/16 v3, 0x20

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "l6rfMqL6uO4vJf2wQ9BlcS80aS9RAxdU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kDo3bZmmggKJDtMwpBeZtATIDXYPDXog"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x4d4

    const/16 v1, 0x10

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0x3ea

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0xfa

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0xed

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "zUYiT8JvqtzTusXd0wwrN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0xdd

    const/16 v4, 0x10

    const/16 v3, 0x1f

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "7MRDpRiWazQnh7KPJAJl4vRwzLx1BKGb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "W6YXr1xbPB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Gbq52SJwNi9qAu2AjciLJePWO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_b
    const/16 v2, 0x96

    const/16 v1, 0xd

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_c
    const/16 v2, 0x4f3

    const/16 v1, 0x8

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_d
    const/16 v2, 0x3e0

    const/16 v1, 0xa

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_e
    const/16 v2, 0x500

    const/4 v1, 0x5

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_f
    const/16 v2, 0x4fb

    const/4 v1, 0x5

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "F8wfBLRr4t"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "m6KkyOOVg8X0ndZUQG2mgE6hH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "SKDMUFdFJPMXubKSzq5KjaXHZATq3OUF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Ghj8mYRv51e2wMnC9FEKaN4eHBhVqIAQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    goto :goto_2

    :sswitch_10
    const/16 v2, 0x48e

    const/4 v1, 0x5

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_11
    const/16 v2, 0x91

    const/4 v1, 0x5

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_12
    const/16 v2, 0x8c

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_13
    const/16 v2, 0x87

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_14
    const/16 v2, 0xa3

    const/16 v1, 0xe

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_15
    const/16 v2, 0x40c

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_16
    const/16 v2, 0x4b7

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_17
    const/16 v2, 0x4a8

    const/16 v1, 0xf

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_18
    const/16 v2, 0x3d8

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_19
    const/16 v2, 0x4e4

    const/16 v1, 0xf

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1a
    const/16 v2, 0xc6

    const/16 v1, 0x9

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1b
    const/16 v2, 0xbd

    const/16 v1, 0x9

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1c
    const/16 v2, 0x10f

    const/16 v1, 0x8

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1d
    const/16 v2, 0x107

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_1e
    const/16 v2, 0xcf

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "TzGfoRLFuVo7UwCT9UC1nsicdZWWDAlG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    :goto_3
    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_0

    goto :goto_3

    :sswitch_1f
    const/16 v2, 0x4c6

    const/16 v1, 0xe

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_20
    const/16 v2, 0x49a

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    .line 94970
    :pswitch_0
    return v6

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

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

.method public static synthetic A0N()[B
    .locals 1

    .line 94971
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0y:[B

    return-object v0
.end method

.method public static A0O(JLjava/lang/String;J)[B
    .locals 11

    .line 94972
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v9, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 94973
    const-wide v0, 0xd693a400L

    div-long v0, p0, v0

    long-to-int v4, v0

    .line 94974
    .local v1, "hours":I
    int-to-long v2, v4

    const-wide/16 v0, 0xe10

    mul-long/2addr v2, v0

    const-wide/32 v7, 0xf4240

    mul-long/2addr v2, v7

    sub-long/2addr p0, v2

    .line 94975
    .end local p3    # null:J
    .local v4, "timeUs":J
    const-wide/32 v0, 0x3938700

    div-long v0, p0, v0

    long-to-int v3, v0

    .line 94976
    .local v0, "minutes":I
    int-to-long v5, v3

    const-wide/16 v0, 0x3c

    mul-long/2addr v5, v0

    mul-long/2addr v5, v7

    sub-long/2addr p0, v5

    .line 94977
    div-long v0, p0, v7

    long-to-int v2, v0

    .line 94978
    .local v9, "seconds":I
    int-to-long v0, v2

    mul-long/2addr v0, v7

    sub-long/2addr p0, v0

    .line 94979
    div-long/2addr p0, p3

    long-to-int v0, p0

    .line 94980
    .local v7, "lastValue":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94981
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v5, v1, v9

    aput-object v4, v1, v10

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    invoke-static {v6, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94982
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    .line 94983
    .local v3, "timeCodeData":[B
    return-object v0

    .line 94984
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0P([II)[I
    .locals 1

    .line 94985
    if-nez p0, :cond_0

    .line 94986
    new-array v0, p1, [I

    return-object v0

    .line 94987
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 94988
    return-object p0

    .line 94989
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static synthetic A0Q()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 94990
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final A0R(I)I
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "Adding support for AR/VR TAGs"
    .end annotation

    .line 94991
    sparse-switch p1, :sswitch_data_0

    .line 94992
    const/4 v0, 0x0

    return v0

    .line 94993
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 94994
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 94995
    :sswitch_2
    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "HyhNlEIHHjvGo8KvAMWihGCcOuKz7U7o"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "rV4cPIzb4RrvL4U1RF1zVSCUyrwoic3K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94996
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 94997
    :sswitch_4
    const/4 v0, 0x3

    return v0

    .line 94998
    :sswitch_5
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_5
        0x86 -> :sswitch_4
        0x88 -> :sswitch_5
        0x9b -> :sswitch_5
        0x9f -> :sswitch_5
        0xa0 -> :sswitch_3
        0xa1 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa5 -> :sswitch_2
        0xa6 -> :sswitch_3
        0xae -> :sswitch_3
        0xb0 -> :sswitch_5
        0xb3 -> :sswitch_5
        0xb5 -> :sswitch_1
        0xb7 -> :sswitch_3
        0xba -> :sswitch_5
        0xbb -> :sswitch_3
        0xd7 -> :sswitch_5
        0xe0 -> :sswitch_3
        0xe1 -> :sswitch_3
        0xe7 -> :sswitch_5
        0xee -> :sswitch_5
        0xf1 -> :sswitch_5
        0xfb -> :sswitch_5
        0x41e4 -> :sswitch_3
        0x41e7 -> :sswitch_5
        0x41ed -> :sswitch_2
        0x4254 -> :sswitch_5
        0x4255 -> :sswitch_2
        0x4282 -> :sswitch_4
        0x4285 -> :sswitch_5
        0x42f7 -> :sswitch_5
        0x4487 -> :sswitch_0
        0x4489 -> :sswitch_1
        0x45a3 -> :sswitch_0
        0x47e1 -> :sswitch_5
        0x47e2 -> :sswitch_2
        0x47e7 -> :sswitch_3
        0x47e8 -> :sswitch_5
        0x4dbb -> :sswitch_3
        0x5031 -> :sswitch_5
        0x5032 -> :sswitch_5
        0x5034 -> :sswitch_3
        0x5035 -> :sswitch_3
        0x536e -> :sswitch_4
        0x53ab -> :sswitch_2
        0x53ac -> :sswitch_5
        0x53b8 -> :sswitch_5
        0x54b0 -> :sswitch_5
        0x54b2 -> :sswitch_5
        0x54ba -> :sswitch_5
        0x55aa -> :sswitch_5
        0x55b0 -> :sswitch_3
        0x55b9 -> :sswitch_5
        0x55ba -> :sswitch_5
        0x55bb -> :sswitch_5
        0x55bc -> :sswitch_5
        0x55bd -> :sswitch_5
        0x55d0 -> :sswitch_3
        0x55d1 -> :sswitch_1
        0x55d2 -> :sswitch_1
        0x55d3 -> :sswitch_1
        0x55d4 -> :sswitch_1
        0x55d5 -> :sswitch_1
        0x55d6 -> :sswitch_1
        0x55d7 -> :sswitch_1
        0x55d8 -> :sswitch_1
        0x55d9 -> :sswitch_1
        0x55da -> :sswitch_1
        0x55ee -> :sswitch_5
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_5
        0x6240 -> :sswitch_3
        0x6264 -> :sswitch_5
        0x63a2 -> :sswitch_2
        0x67c8 -> :sswitch_3
        0x6d80 -> :sswitch_3
        0x7373 -> :sswitch_3
        0x75a1 -> :sswitch_3
        0x75a2 -> :sswitch_5
        0x7670 -> :sswitch_3
        0x7671 -> :sswitch_5
        0x7672 -> :sswitch_2
        0x7673 -> :sswitch_1
        0x7674 -> :sswitch_1
        0x7675 -> :sswitch_1
        0x22b59c -> :sswitch_4
        0x23e383 -> :sswitch_5
        0x2ad7b1 -> :sswitch_5
        0x114d9b74 -> :sswitch_3
        0x1254c367 -> :sswitch_3
        0x1549a966 -> :sswitch_3
        0x1654ae6b -> :sswitch_3
        0x18538067 -> :sswitch_3
        0x1a45dfa3 -> :sswitch_3
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_3
    .end sparse-switch
.end method

.method public final A0S(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94999
    move-object v3, p0

    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09()V

    .line 95000
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 95001
    .end local v0
    .end local v9
    :cond_0
    :goto_0
    return-void

    .line 95002
    :sswitch_0
    iget-boolean v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0e:Z

    if-nez v0, :cond_1

    .line 95003
    iget-object v2, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R:Lcom/facebook/ads/redexgen/X/45;

    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Q:Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04(Lcom/facebook/ads/redexgen/X/45;Lcom/facebook/ads/redexgen/X/45;)Lcom/facebook/ads/redexgen/X/Gw;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 95004
    iput-boolean v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0e:Z

    .line 95005
    :cond_1
    iput-object v4, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R:Lcom/facebook/ads/redexgen/X/45;

    .line 95006
    iput-object v4, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Q:Lcom/facebook/ads/redexgen/X/45;

    .line 95007
    goto :goto_0

    .line 95008
    :sswitch_1
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 95009
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 95010
    goto :goto_0

    .line 95011
    :sswitch_2
    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v5

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "WZACEI803UG8FVl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    .line 95012
    const-wide/32 v0, 0xf4240

    iput-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    .line 95013
    :cond_3
    iget-wide v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_0

    .line 95014
    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I:J

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03(J)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    goto :goto_0

    .line 95015
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95016
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0i:Z

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    if-nez v0, :cond_c

    goto :goto_0

    .line 95017
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95018
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0i:Z

    if-eqz v0, :cond_0

    .line 95019
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0a:Lcom/facebook/ads/redexgen/X/Gz;

    if-eqz v0, :cond_d

    .line 95020
    iget-object v7, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    new-array v6, v5, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    sget-object v5, Lcom/facebook/ads/redexgen/X/1w;->A03:Ljava/util/UUID;

    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0a:Lcom/facebook/ads/redexgen/X/Gz;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Gz;->A03:[B

    const/16 v3, 0x555

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, v5, v1, v4}, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v0, v6, v2

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    invoke-direct {v0, v6}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>([Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/IC;->A0Z:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    goto/16 :goto_0

    .line 95021
    :sswitch_5
    iget v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C:I

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "tg6sq0stTi0cIlF7Upi0qsQ5QklGxJF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_e

    :goto_1
    iget-wide v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0K:J

    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-eqz v0, :cond_e

    .line 95022
    iget v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C:I

    const v0, 0x1c53bb6b

    if-ne v1, v0, :cond_0

    .line 95023
    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0K:J

    iput-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0H:J

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "yLIpCO5kJmqKflO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mFIbnXIm9TTTynra4E"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_e

    goto :goto_1

    .line 95024
    :sswitch_6
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/IC;

    .line 95025
    .local v0, "currentTrack":Lcom/facebook/ads/redexgen/X/IC;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 95026
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95027
    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/IC;->A0R:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IC;->A0G(Lcom/facebook/ads/redexgen/X/GY;I)V

    .line 95028
    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/IC;->A0R:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95029
    :cond_5
    iput-object v4, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    .line 95030
    goto/16 :goto_0

    .line 95031
    .end local v0    # "currentTrack":Lcom/facebook/ads/redexgen/X/IC;
    :sswitch_7
    iget v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    .line 95032
    return-void

    .line 95033
    :cond_6
    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    iget v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/IC;

    .line 95034
    .local v9, "track":Lcom/facebook/ads/redexgen/X/IC;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IC;->A08(Lcom/facebook/ads/redexgen/X/IC;)V

    .line 95035
    iget-wide v4, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    const/16 v4, 0xd7

    const/4 v1, 0x6

    const/16 v0, 0x52

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95036
    iget-object v5, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0o:Lcom/facebook/ads/redexgen/X/4J;

    .line 95037
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 95038
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E:J

    .line 95039
    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95040
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 95041
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 95042
    :cond_7
    const/4 v13, 0x0

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_10

    .line 95043
    .local v0, "sampleOffset":I
    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "BDPY36VwNm"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "7hC1KMOm7DpnqonjeX0jtoaYt"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const/4 v0, 0x0

    .local v1, "i":I
    :goto_2
    iget v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    if-ge v0, v1, :cond_8

    .line 95044
    iget-object v1, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v1, v1, v0

    add-int/2addr v13, v1

    .line 95045
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95046
    .end local v1    # "i":I
    :cond_8
    const/4 v4, 0x0

    .local v10, "i":I
    :goto_3
    iget v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    if-ge v4, v0, :cond_a

    .line 95047
    iget-wide v9, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F:J

    iget v0, v8, Lcom/facebook/ads/redexgen/X/IC;->A0I:I

    mul-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v9, v0

    .line 95048
    .local v11, "sampleTimeUs":J
    iget v11, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    .line 95049
    .local v1, "sampleFlags":I
    if-nez v4, :cond_9

    iget-boolean v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0W:Z

    if-nez v0, :cond_9

    .line 95050
    or-int/lit8 v11, v11, 0x1

    .line 95051
    .end local v1    # "sampleFlags":I
    .local v13, "sampleFlags":I
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v12, v0, v4

    .line 95052
    .local p0, "sampleSize":I
    sub-int/2addr v13, v12

    .line 95053
    .end local v0    # "sampleOffset":I
    .local p1, "sampleOffset":I
    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I(Lcom/facebook/ads/redexgen/X/IC;JIII)V

    .line 95054
    .end local v11    # "sampleTimeUs":J
    .end local v13    # "sampleFlags":I
    .end local p0    # "sampleSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 95055
    .end local v10    # "i":I
    .end local p1    # "sampleOffset":I
    .restart local v0    # "sampleOffset":I
    :cond_a
    iput v2, v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95056
    goto/16 :goto_0

    .line 95057
    :cond_b
    const/16 v2, 0x39d

    const/16 v1, 0x1a

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95058
    :cond_c
    const/16 v2, 0x175

    const/16 v1, 0x35

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95059
    :cond_d
    const/16 v2, 0x27f

    const/16 v1, 0x37

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95060
    :cond_e
    const/16 v2, 0x333

    const/16 v1, 0x32

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95061
    :cond_f
    const/16 v2, 0x14d

    const/16 v1, 0x28

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95062
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_7
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_5
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_3
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_1
        0x1c53bb6b -> :sswitch_0
    .end sparse-switch
.end method

.method public final A0T(ID)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95063
    sparse-switch p1, :sswitch_data_0

    .line 95064
    :goto_0
    return-void

    .line 95065
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A09:F

    .line 95066
    goto :goto_0

    .line 95067
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A08:F

    .line 95068
    goto :goto_0

    .line 95069
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0A:F

    .line 95070
    goto :goto_0

    .line 95071
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A01:F

    .line 95072
    goto :goto_0

    .line 95073
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A00:F

    .line 95074
    goto :goto_0

    .line 95075
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v4

    double-to-float v3, p2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "0K"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/IC;->A0C:F

    .line 95076
    goto :goto_0

    .line 95077
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0B:F

    .line 95078
    goto :goto_0

    .line 95079
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A03:F

    .line 95080
    goto :goto_0

    .line 95081
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A02:F

    .line 95082
    goto :goto_0

    .line 95083
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A05:F

    .line 95084
    goto :goto_0

    .line 95085
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A04:F

    .line 95086
    goto :goto_0

    .line 95087
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "bgRhYiIqKVlSmtLlUnVbMuj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    double-to-float v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/IC;->A07:F

    .line 95088
    goto/16 :goto_0

    :cond_0
    double-to-float v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/IC;->A07:F

    goto/16 :goto_0

    .line 95089
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A06:F

    .line 95090
    goto/16 :goto_0

    .line 95091
    :sswitch_d
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I:J

    .line 95092
    goto/16 :goto_0

    .line 95093
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v4

    double-to-int v3, p2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "mnSBpt4UIloiGRhCy1GZQUK3TYQANP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/IC;->A0T:I

    .line 95094
    goto/16 :goto_0

    .line 95095
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_e
        0x4489 -> :sswitch_d
        0x55d1 -> :sswitch_c
        0x55d2 -> :sswitch_b
        0x55d3 -> :sswitch_a
        0x55d4 -> :sswitch_9
        0x55d5 -> :sswitch_8
        0x55d6 -> :sswitch_7
        0x55d7 -> :sswitch_6
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_4
        0x55da -> :sswitch_3
        0x7673 -> :sswitch_2
        0x7674 -> :sswitch_1
        0x7675 -> :sswitch_0
    .end sparse-switch
.end method

.method public final A0U(IILcom/facebook/ads/redexgen/X/lN;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95096
    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object v6, v6

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p3

    move/from16 v9, p1

    sparse-switch v9, :sswitch_data_0

    .line 95097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x466

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95098
    :sswitch_0
    invoke-direct {v6, v9}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95099
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    new-array v0, v8, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0l:[B

    .line 95100
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0l:[B

    invoke-interface {v7, v0, v2, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 95101
    goto/16 :goto_e

    .line 95102
    :sswitch_1
    invoke-direct {v6, v9}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    sget-object v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1b

    .line 95103
    sget-object v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "vSk1rRCvXwYs114cFInjW7yvt4gWKzzv"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    new-array v0, v8, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0j:[B

    .line 95104
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0j:[B

    invoke-interface {v7, v0, v2, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 95105
    goto/16 :goto_e

    .line 95106
    :sswitch_2
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0m:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 95107
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0m:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    rsub-int/lit8 v0, v8, 0x4

    invoke-interface {v7, v1, v0, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 95108
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0m:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 95109
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0m:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C:I

    .line 95110
    goto/16 :goto_e

    .line 95111
    :sswitch_3
    new-array v3, v8, [B

    .line 95112
    .local v0, "encryptionKey":[B
    invoke-interface {v7, v3, v2, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 95113
    invoke-direct {v6, v9}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gz;

    invoke-direct {v0, v11, v3, v2, v2}, Lcom/facebook/ads/redexgen/X/Gz;-><init>(I[BII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0a:Lcom/facebook/ads/redexgen/X/Gz;

    .line 95114
    goto/16 :goto_e

    .line 95115
    .end local v0    # "encryptionKey":[B
    :sswitch_4
    invoke-direct {v6, v9}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95116
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    new-array v0, v8, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    .line 95117
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IC;->A0m:[B

    invoke-interface {v7, v0, v2, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 95118
    goto/16 :goto_e

    .line 95119
    :sswitch_5
    invoke-direct {v6, v9}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    invoke-direct {v6, v0, v7, v8}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J(Lcom/facebook/ads/redexgen/X/IC;Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95120
    goto/16 :goto_e

    .line 95121
    :sswitch_6
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    if-eq v0, v3, :cond_0

    .line 95122
    return-void

    .line 95123
    :cond_0
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06:I

    .line 95124
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IC;

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A01:I

    .line 95125
    invoke-direct {v6, v1, v0, v7, v8}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0H(Lcom/facebook/ads/redexgen/X/IC;ILcom/facebook/ads/redexgen/X/lN;I)V

    .line 95126
    goto/16 :goto_e

    .line 95127
    :sswitch_7
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    const/16 v4, 0x8

    if-nez v0, :cond_1

    .line 95128
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0r:Lcom/facebook/ads/redexgen/X/IE;

    invoke-virtual {v0, v7, v2, v11, v4}, Lcom/facebook/ads/redexgen/X/IE;->A05(Lcom/facebook/ads/redexgen/X/lN;ZZI)J

    move-result-wide v0

    long-to-int v10, v0

    iput v10, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06:I

    .line 95129
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0r:Lcom/facebook/ads/redexgen/X/IE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IE;->A04()I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sget-object v10, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v10, v0

    const/4 v0, 0x6

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 95130
    sget-object v10, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "LCHoyUIFh4JbWXc3a57uog3rKRFOb5wV"

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const-string v1, "47gJribS0awN4nsHBZkjm7XOEmPrRfLr"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D:J

    .line 95131
    iput v11, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95132
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 95133
    :cond_1
    :goto_0
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/IC;

    .line 95134
    .local v13, "track":Lcom/facebook/ads/redexgen/X/IC;
    if-nez v12, :cond_3

    .line 95135
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sub-int/2addr v8, v0

    invoke-interface {v7, v8}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 95136
    iput v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95137
    return-void

    .line 95138
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D:J

    .line 95139
    iput v11, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95140
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    goto :goto_0

    .line 95141
    :cond_3
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/IC;->A08(Lcom/facebook/ads/redexgen/X/IC;)V

    .line 95142
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    if-ne v0, v11, :cond_5

    .line 95143
    const/4 v15, 0x3

    invoke-direct {v6, v7, v15}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E(Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95144
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit8 v14, v0, 0x6

    shr-int/2addr v14, v11

    .line 95145
    .local v5, "lacing":I
    const/16 v13, 0xff

    if-nez v14, :cond_8

    .line 95146
    iput v11, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    .line 95147
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    invoke-static {v0, v11}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P([II)[I

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    .line 95148
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sub-int/2addr v8, v0

    sub-int/2addr v8, v15

    aput v8, v1, v2

    .line 95149
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    aget-byte v5, v1, v0

    shl-int/2addr v5, v4

    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x1

    aget-byte v1, v1, v0

    const/16 v0, 0xff

    and-int/2addr v1, v0

    or-int/2addr v5, v1

    .line 95150
    .local v0, "timecode":I
    iget-wide v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0G:J

    int-to-long v0, v5

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F:J

    .line 95151
    iget v0, v12, Lcom/facebook/ads/redexgen/X/IC;->A0V:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/16 v0, 0xa3

    if-ne v9, v0, :cond_7

    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    .line 95152
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "Vc6YaXBr4sE6Z9Kledba3u83scjXoejR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GPxnjQ5uiYxzVhoi9JJVxDxAifN9s8px"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aget-byte v1, v4, v3

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    .line 95153
    .local v1, "isKeyframe":Z
    :goto_2
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    .line 95154
    const/4 v0, 0x2

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95155
    const/4 v0, 0x0

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    .line 95156
    .end local v5    # "lacing":I
    :cond_5
    const/16 v0, 0xa3

    if-ne v9, v0, :cond_15

    .line 95157
    :goto_4
    iget v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    if-ge v1, v0, :cond_16

    .line 95158
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    aget v1, v1, v0

    .line 95159
    const/4 v0, 0x0

    invoke-direct {v6, v7, v12, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/IC;IZ)I

    move-result v16

    .line 95160
    .local v11, "sampleSize":I
    iget-wide v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0F:J

    iget v3, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    iget v2, v12, Lcom/facebook/ads/redexgen/X/IC;->A0I:I

    mul-int/2addr v3, v2

    div-int/lit16 v2, v3, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 95161
    .local v14, "sampleTimeUs":J
    iget v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02:I

    const/16 v17, 0x0

    move-object v11, v6

    move-wide v13, v0

    move v15, v2

    move-object v12, v12

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0I(Lcom/facebook/ads/redexgen/X/IC;JIII)V

    .line 95162
    iget v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    .line 95163
    .end local v11    # "sampleSize":I
    .end local v14    # "sampleTimeUs":J
    goto :goto_4

    .line 95164
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 95165
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 95166
    :cond_8
    const/4 v10, 0x4

    invoke-direct {v6, v7, v10}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E(Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95167
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v15

    and-int/2addr v0, v13

    add-int/2addr v0, v11

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    .line 95168
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P([II)[I

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    .line 95169
    if-ne v14, v3, :cond_9

    .line 95170
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sub-int/2addr v8, v0

    sub-int/2addr v8, v10

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    div-int/2addr v8, v0

    .line 95171
    .local v0, "blockLacingSampleSize":I
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    invoke-static {v1, v2, v0, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 95172
    .end local v0    # "blockLacingSampleSize":I
    goto/16 :goto_1

    :cond_9
    if-ne v14, v11, :cond_e

    .line 95173
    const/4 v15, 0x0

    .line 95174
    .local v0, "totalSamplesSize":I
    const/4 v10, 0x4

    .line 95175
    .local v2, "headerSize":I
    const/4 v5, 0x0

    .local v4, "sampleIndex":I
    :goto_5
    iget v3, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_c

    sub-int/2addr v3, v11

    if-ge v5, v3, :cond_d

    .line 95176
    :goto_6
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aput v2, v0, v5

    .line 95177
    :cond_a
    add-int/2addr v10, v11

    invoke-direct {v6, v7, v10}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E(Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95178
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v14

    sget-object v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "QqySTVYSyUdR3w6zpaSbgPrcegDpRTeR"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "gT3bwZtYi7wT97ycLVgitbKLuY9aoVNS"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    add-int/lit8 v0, v10, -0x1

    aget-byte v3, v14, v0

    and-int/2addr v3, v13

    .line 95179
    .local v14, "byteValue":I
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v0, v1, v5

    add-int/2addr v0, v3

    aput v0, v1, v5

    .line 95180
    if-eq v3, v13, :cond_a

    .line 95181
    :goto_7
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v0, v0, v5

    add-int/2addr v15, v0

    .line 95182
    .end local v14    # "byteValue":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    sget-object v3, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "opIzPavLvAV6dvwDrp1"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    add-int/lit8 v0, v10, -0x1

    aget-byte v3, v14, v0

    and-int/2addr v3, v13

    .line 95183
    .local v14, "byteValue":I
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v0, v1, v5

    add-int/2addr v0, v3

    aput v0, v1, v5

    .line 95184
    if-eq v3, v13, :cond_a

    goto :goto_7

    :cond_c
    sget-object v14, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "uG7prxZBXLM0QG5e8GSw94nYMCP7upCE"

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const-string v1, "tV31aGArCsXy4K1N5Jjs7nQ9FZDzw28J"

    const/4 v0, 0x0

    aput-object v1, v14, v0

    sub-int/2addr v3, v11

    if-ge v5, v3, :cond_d

    goto :goto_6

    .line 95185
    .end local v4    # "sampleIndex":I
    :cond_d
    iget-object v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    sub-int/2addr v1, v11

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sub-int/2addr v8, v0

    sub-int/2addr v8, v10

    sub-int/2addr v8, v15

    aput v8, v2, v1

    .line 95186
    .end local v0    # "totalSamplesSize":I
    .end local v2    # "headerSize":I
    goto/16 :goto_1

    :cond_e
    if-ne v14, v15, :cond_1c

    .line 95187
    const/16 v18, 0x0

    .line 95188
    .local v2, "totalSamplesSize":I
    const/4 v14, 0x4

    .line 95189
    .local v4, "headerSize":I
    const/4 v10, 0x0

    .local v14, "sampleIndex":I
    :goto_8
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    sub-int/2addr v0, v11

    if-ge v10, v0, :cond_14

    .line 95190
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aput v2, v0, v10

    .line 95191
    add-int/lit8 v14, v14, 0x1

    invoke-direct {v6, v7, v14}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E(Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95192
    iget-object v3, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1b

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "lQQ4f1MYxOwR1g4uON0whOI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v14, -0x1

    aget-byte v0, v1, v0

    if-eqz v0, :cond_1a

    .line 95193
    const-wide/16 v2, 0x0

    .line 95194
    .local v16, "readValue":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    if-ge v15, v4, :cond_12

    .line 95195
    rsub-int/lit8 v0, v15, 0x7

    shl-int/2addr v11, v0

    .line 95196
    .local v1, "lengthMask":I
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    move-object/from16 v19, v0

    sget-object v16, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v16, v0

    const/4 v1, 0x0

    aget-object v17, v16, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v0, v16

    if-eq v0, v1, :cond_f

    sget-object v16, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "6gmtIRdzQjg9uolj5CgbNQmEFE2eXosQ"

    const/4 v0, 0x3

    aput-object v1, v16, v0

    invoke-virtual/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v14, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v11

    if-eqz v0, :cond_10

    .line 95197
    :goto_a
    add-int/lit8 v2, v14, -0x1

    .line 95198
    .local v11, "readPosition":I
    add-int/2addr v14, v15

    .line 95199
    invoke-direct {v6, v7, v14}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E(Lcom/facebook/ads/redexgen/X/lN;I)V

    .line 95200
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    .end local v11    # "readPosition":I
    .local p0, "readPosition":I
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    not-int v1, v11

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 95201
    .end local p0    # "readPosition":I
    .restart local v11    # "readPosition":I
    :goto_b
    if-ge v0, v14, :cond_11

    .line 95202
    shl-long/2addr v2, v4

    .line 95203
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0l:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v11, v0, 0x1

    .end local v11    # "readPosition":I
    .restart local p0    # "readPosition":I
    aget-byte v0, v1, v0

    and-int/2addr v0, v13

    int-to-long v0, v0

    or-long/2addr v2, v0

    move v0, v11

    goto :goto_b

    :cond_f
    invoke-virtual/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v14, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v11

    if-eqz v0, :cond_10

    goto :goto_a

    .line 95204
    .end local v1    # "lengthMask":I
    .end local v11
    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_9

    .line 95205
    .end local p0    # "readPosition":I
    .restart local v11    # "readPosition":I
    :cond_11
    if-lez v10, :cond_12

    .line 95206
    mul-int/lit8 v0, v15, 0x7

    add-int/lit8 v0, v0, 0x6

    const-wide/16 v15, 0x1

    shl-long v0, v15, v0

    sub-long/2addr v0, v15

    sub-long/2addr v2, v0

    .line 95207
    .end local v15    # "i":I
    .end local v16    # "readValue":J
    .local v11, "readValue":J
    :cond_12
    const-wide/32 v15, -0x80000000

    cmp-long v0, v2, v15

    if-ltz v0, :cond_19

    const-wide/32 v15, 0x7fffffff

    cmp-long v0, v2, v15

    if-gtz v0, :cond_19

    .line 95208
    long-to-int v11, v2

    .line 95209
    .local v1, "intReadValue":I
    iget-object v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    .line 95210
    if-nez v10, :cond_13

    .line 95211
    :goto_c
    aput v11, v2, v10

    .line 95212
    iget-object v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    aget v0, v0, v10

    add-int v18, v18, v0

    .line 95213
    .end local v1    # "intReadValue":I
    .end local v11    # "readValue":J
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0xff

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto/16 :goto_8

    .line 95214
    :cond_13
    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    add-int/lit8 v0, v10, -0x1

    aget v0, v1, v0

    add-int/2addr v11, v0

    goto :goto_c

    .line 95215
    .end local v14    # "sampleIndex":I
    :cond_14
    iget-object v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A07:I

    sub-int/2addr v8, v0

    sub-int/2addr v8, v14

    sub-int v8, v8, v18

    aput v8, v2, v1

    .line 95216
    .end local v2    # "totalSamplesSize":I
    .end local v4    # "headerSize":I
    goto/16 :goto_1

    .line 95217
    :cond_15
    :goto_d
    iget v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03:I

    if-ge v1, v0, :cond_17

    .line 95218
    iget-object v3, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v2, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    iget-object v1, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0f:[I

    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    aget v0, v1, v0

    .line 95219
    const/4 v1, 0x1

    invoke-direct {v6, v7, v12, v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/IC;IZ)I

    move-result v0

    aput v0, v3, v2

    .line 95220
    iget v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A04:I

    goto :goto_d

    .line 95221
    :cond_16
    const/4 v0, 0x0

    iput v0, v6, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95222
    .end local v13    # "track":Lcom/facebook/ads/redexgen/X/IC;
    :cond_17
    :goto_e
    return-void

    .line 95223
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95224
    .restart local v11    # "readValue":J
    :cond_19
    const/16 v2, 0x242

    const/16 v1, 0x25

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95225
    .end local v11    # "readValue":J
    :cond_1a
    const/16 v2, 0x3b7

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95226
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95227
    .end local v0
    .end local v1
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x475

    const/16 v1, 0x19

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_6
        0x41ed -> :sswitch_5
        0x4255 -> :sswitch_4
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_2
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_0
    .end sparse-switch
.end method

.method public final A0V(IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95228
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x2a

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 95229
    :cond_0
    :goto_0
    return-void

    .line 95230
    :sswitch_0
    iput-wide p2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0O:J

    .line 95231
    goto :goto_0

    .line 95232
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "17DkRR24xbcR08jR5ve3iaIolPHvV07P"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    long-to-int v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/IC;->A0I:I

    .line 95233
    goto :goto_0

    .line 95234
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95235
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 95236
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/IC;->A0S:I

    .line 95237
    goto :goto_0

    .line 95238
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/IC;->A0S:I

    .line 95239
    goto :goto_0

    .line 95240
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0S:I

    .line 95241
    goto :goto_0

    .line 95242
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/IC;->A0S:I

    .line 95243
    goto :goto_0

    .line 95244
    :sswitch_3
    iput-wide p2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E:J

    .line 95245
    goto :goto_0

    .line 95246
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0D:I

    .line 95247
    goto :goto_0

    .line 95248
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/IC;->A0Y:J

    .line 95249
    goto :goto_0

    .line 95250
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/IC;->A0X:J

    .line 95251
    goto :goto_0

    .line 95252
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0N:I

    .line 95253
    goto :goto_0

    .line 95254
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0P:I

    .line 95255
    goto :goto_0

    .line 95256
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0O:I

    .line 95257
    goto :goto_0

    .line 95258
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95259
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0h:Z

    .line 95260
    long-to-int v0, p2

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v1

    .line 95261
    .local v0, "colorSpace":I
    if-eq v1, v6, :cond_0

    .line 95262
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0G:I

    goto/16 :goto_0

    .line 95263
    .end local v0    # "colorSpace":I
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95264
    long-to-int v0, p2

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v1

    .line 95265
    .local v0, "colorTransfer":I
    if-eq v1, v6, :cond_0

    .line 95266
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0H:I

    goto/16 :goto_0

    .line 95267
    .end local v0    # "colorTransfer":I
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95268
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 95269
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0F:I

    .line 95270
    goto/16 :goto_0

    .line 95271
    :pswitch_5
    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "46IydxS7gy6otlVQjCqCZWblmnAwVrZG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ABdhU4etfaEDzGqzhVxfZNO7CdkZTY0J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput v5, v3, Lcom/facebook/ads/redexgen/X/IC;->A0F:I

    .line 95272
    goto/16 :goto_0

    :cond_2
    iput v5, v3, Lcom/facebook/ads/redexgen/X/IC;->A0F:I

    goto/16 :goto_0

    .line 95273
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    cmp-long v0, p2, v8

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/IC;->A0g:Z

    .line 95274
    goto/16 :goto_0

    .line 95275
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0J:I

    .line 95276
    goto/16 :goto_0

    .line 95277
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0K:I

    .line 95278
    goto/16 :goto_0

    .line 95279
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0L:I

    .line 95280
    goto/16 :goto_0

    .line 95281
    :sswitch_11
    long-to-int v0, p2

    .line 95282
    .local v1, "layout":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D(I)V

    .line 95283
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 95284
    :sswitch_12
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/IC;->A0U:I

    .line 95285
    goto/16 :goto_0

    .line 95286
    :sswitch_13
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IC;->A0U:I

    .line 95287
    goto/16 :goto_0

    .line 95288
    :sswitch_14
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/IC;->A0U:I

    .line 95289
    goto/16 :goto_0

    .line 95290
    :sswitch_15
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/IC;->A0U:I

    .line 95291
    goto/16 :goto_0

    .line 95292
    .end local v1    # "layout":I
    :sswitch_16
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0K:J

    .line 95293
    goto/16 :goto_0

    .line 95294
    :sswitch_17
    cmp-long v0, p2, v8

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 95295
    :sswitch_18
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 95296
    :sswitch_19
    cmp-long v0, p2, v8

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 95297
    :sswitch_1a
    const-wide/16 v1, 0x5

    cmp-long v0, p2, v1

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 95298
    :sswitch_1b
    cmp-long v0, p2, v8

    if-nez v0, :cond_a

    goto/16 :goto_0

    .line 95299
    :sswitch_1c
    cmp-long v0, p2, v8

    if-ltz v0, :cond_b

    const-wide/16 v1, 0x2

    cmp-long v0, p2, v1

    if-gtz v0, :cond_b

    goto/16 :goto_0

    .line 95300
    :sswitch_1d
    const-wide/16 v5, 0x3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "siSTSWWHFDsKrirn3iU8fidRJrb4DuSX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "o7Su23MSMUKyfq0AiKXYGeUTl03UpruG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    cmp-long v0, p2, v5

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "wDyyIq2mnN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "u9jmr3hENDVfo4ybwkpsevoxR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, p2, v5

    if-nez v0, :cond_c

    goto/16 :goto_0

    .line 95301
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IC;->A01(Lcom/facebook/ads/redexgen/X/IC;I)I

    .line 95302
    goto/16 :goto_0

    .line 95303
    :sswitch_1f
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0W:Z

    .line 95304
    goto/16 :goto_0

    .line 95305
    :sswitch_20
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0d:Z

    if-nez v0, :cond_0

    .line 95306
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C(I)V

    .line 95307
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Q:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 95308
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0d:Z

    goto/16 :goto_0

    .line 95309
    :sswitch_21
    long-to-int v0, p2

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A01:I

    .line 95310
    goto/16 :goto_0

    .line 95311
    :sswitch_22
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0G:J

    .line 95312
    goto/16 :goto_0

    .line 95313
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0R:I

    .line 95314
    goto/16 :goto_0

    .line 95315
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0M:I

    .line 95316
    goto/16 :goto_0

    .line 95317
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C(I)V

    .line 95318
    iget-object v2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R:Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 95319
    goto/16 :goto_0

    .line 95320
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0W:I

    .line 95321
    goto/16 :goto_0

    .line 95322
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0E:I

    .line 95323
    goto/16 :goto_0

    .line 95324
    :sswitch_28
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A03(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0D:J

    .line 95325
    goto/16 :goto_0

    .line 95326
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    cmp-long v0, p2, v8

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/IC;->A0f:Z

    .line 95327
    goto/16 :goto_0

    .line 95328
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v1

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/IC;->A0V:I

    .line 95329
    goto/16 :goto_0

    .line 95330
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1de

    const/16 v1, 0x15

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95331
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c9

    const/16 v1, 0x15

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95332
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x71

    const/16 v1, 0x16

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95333
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ba

    const/16 v1, 0xf

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95334
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x267

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95335
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22f

    const/16 v1, 0x13

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 95336
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1aa

    const/16 v1, 0x10

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_2a
        0x88 -> :sswitch_29
        0x9b -> :sswitch_28
        0x9f -> :sswitch_27
        0xb0 -> :sswitch_26
        0xb3 -> :sswitch_25
        0xba -> :sswitch_24
        0xd7 -> :sswitch_23
        0xe7 -> :sswitch_22
        0xee -> :sswitch_21
        0xf1 -> :sswitch_20
        0xfb -> :sswitch_1f
        0x41e7 -> :sswitch_1e
        0x4254 -> :sswitch_1d
        0x4285 -> :sswitch_1c
        0x42f7 -> :sswitch_1b
        0x47e1 -> :sswitch_1a
        0x47e8 -> :sswitch_19
        0x5031 -> :sswitch_18
        0x5032 -> :sswitch_17
        0x53ac -> :sswitch_16
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_10
        0x54b2 -> :sswitch_f
        0x54ba -> :sswitch_e
        0x55aa -> :sswitch_d
        0x55b9 -> :sswitch_c
        0x55ba -> :sswitch_b
        0x55bb -> :sswitch_a
        0x55bc -> :sswitch_9
        0x55bd -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_15
        0x1 -> :sswitch_14
        0x3 -> :sswitch_13
        0xf -> :sswitch_12
    .end sparse-switch
.end method

.method public final A0W(IJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95337
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A09()V

    .line 95338
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 95339
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 95340
    :sswitch_1
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0e:Z

    if-nez v0, :cond_0

    .line 95341
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0s:Z

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0H:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    .line 95342
    iput-boolean v4, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0c:Z

    goto :goto_0

    .line 95343
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    iget-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0J:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 95344
    iput-boolean v4, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0e:Z

    goto :goto_0

    .line 95345
    :sswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/45;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R:Lcom/facebook/ads/redexgen/X/45;

    .line 95346
    new-instance v0, Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/45;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Q:Lcom/facebook/ads/redexgen/X/45;

    .line 95347
    goto :goto_0

    .line 95348
    :sswitch_3
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    cmp-long v0, v1, p2

    if-nez v0, :cond_3

    .line 95349
    :cond_2
    iput-wide p2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0M:J

    .line 95350
    iput-wide p4, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0N:J

    .line 95351
    goto :goto_0

    .line 95352
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/IC;->A0h:Z

    .line 95353
    goto :goto_0

    .line 95354
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/IC;->A0i:Z

    .line 95355
    goto :goto_0

    .line 95356
    :sswitch_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0C:I

    .line 95357
    iput-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0K:J

    .line 95358
    goto :goto_0

    .line 95359
    :sswitch_7
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0d:Z

    .line 95360
    goto :goto_0

    .line 95361
    :sswitch_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T:Lcom/facebook/ads/redexgen/X/IC;

    .line 95362
    goto :goto_0

    .line 95363
    :sswitch_9
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0W:Z

    .line 95364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0E:J

    .line 95365
    goto :goto_0

    .line 95366
    :cond_3
    const/16 v2, 0x376

    const/16 v1, 0x27

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_9
        0xae -> :sswitch_8
        0xbb -> :sswitch_7
        0x4dbb -> :sswitch_6
        0x5035 -> :sswitch_5
        0x55d0 -> :sswitch_4
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_3
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_1
    .end sparse-switch
.end method

.method public final A0X(ILjava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding support for AR/VR TAGs"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95367
    sparse-switch p1, :sswitch_data_0

    .line 95368
    :cond_0
    :goto_0
    return-void

    .line 95369
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/IC;->A04(Lcom/facebook/ads/redexgen/X/IC;Ljava/lang/String;)Ljava/lang/String;

    .line 95370
    goto :goto_0

    .line 95371
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "fMu5gmFUMMjyE5zZcj2yfEtnORci9Tka"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "H9jO6y53WPcXDhmRgvdqczqosoX1IojD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object p2, v3, Lcom/facebook/ads/redexgen/X/IC;->A0e:Ljava/lang/String;

    .line 95372
    goto :goto_0

    .line 95373
    :sswitch_2
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0U:Ljava/lang/String;

    .line 95374
    goto :goto_0

    .line 95375
    :sswitch_3
    const/16 v2, 0x55f

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x54d

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 95376
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05(I)Lcom/facebook/ads/redexgen/X/IC;

    move-result-object v0

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/IC;->A0d:Ljava/lang/String;

    .line 95377
    goto :goto_0

    .line 95378
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x227

    const/16 v1, 0x8

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2a

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_4
        0x4282 -> :sswitch_3
        0x45a3 -> :sswitch_2
        0x536e -> :sswitch_1
        0x22b59c -> :sswitch_0
    .end sparse-switch
.end method

.method public final A0Y(I)Z
    .locals 4

    .line 95379
    const v0, 0x1549a966

    if-eq p1, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    const v3, 0x1c53bb6b

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0u:[Ljava/lang/String;

    const-string v1, "AFdTkHzIX2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "QjCHXWDM6RodCI1HM4Zn3pBBf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_0

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 95380
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S:Lcom/facebook/ads/redexgen/X/GY;

    .line 95381
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95382
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0X:Z

    .line 95383
    const/4 v2, 0x1

    .line 95384
    .local v1, "continueReading":Z
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0X:Z

    if-nez v0, :cond_1

    .line 95385
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0q:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/I9;->AGe(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v2

    .line 95386
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0L(Lcom/facebook/ads/redexgen/X/Gt;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95387
    const/4 v0, 0x1

    return v0

    .line 95388
    :cond_1
    if-nez v2, :cond_3

    .line 95389
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 95390
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IC;

    .line 95391
    .local v2, "track":Lcom/facebook/ads/redexgen/X/IC;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IC;->A08(Lcom/facebook/ads/redexgen/X/IC;)V

    .line 95392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A0E()V

    .line 95393
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/IC;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95394
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 95395
    :cond_3
    return v3
.end method

.method public final AGr()V
    .locals 0

    .line 95396
    return-void
.end method

.method public final AIM(JJ)V
    .locals 2

    .line 95397
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0G:J

    .line 95398
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A05:I

    .line 95399
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0q:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->reset()V

    .line 95400
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0r:Lcom/facebook/ads/redexgen/X/IE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IE;->A06()V

    .line 95401
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0A()V

    .line 95402
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95403
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0P:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A0F()V

    .line 95404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95405
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95406
    new-instance v0, Lcom/facebook/ads/redexgen/X/ID;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ID;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ID;->A01(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    return v0
.end method
