.class public final Lcom/facebook/ads/redexgen/X/kc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Rename the class for A/B Testing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IY;,
        Lcom/facebook/ads/redexgen/X/IX;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/FragmentedMp4Extractor2$Flags;
    }
.end annotation


# static fields
.field public static A0Z:[B

.field public static A0a:[Ljava/lang/String;

.field public static final A0b:Lcom/facebook/ads/redexgen/X/Gb;

.field public static final A0c:Lcom/facebook/ads/redexgen/X/or;

.field public static final A0d:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New field"
    .end annotation
.end field

.field public A0B:J

.field public A0C:J

.field public A0D:Lcom/facebook/ads/redexgen/X/4J;

.field public A0E:Lcom/facebook/ads/redexgen/X/GY;

.field public A0F:Lcom/facebook/ads/redexgen/X/IY;

.field public A0G:Z

.field public A0H:Z

.field public A0I:[Lcom/facebook/ads/redexgen/X/H1;

.field public A0J:[Lcom/facebook/ads/redexgen/X/H1;

.field public final A0K:I

.field public final A0L:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0N:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0O:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0P:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0R:Lcom/facebook/ads/redexgen/X/4R;

.field public final A0S:Lcom/facebook/ads/redexgen/X/H1;

.field public final A0T:Lcom/facebook/ads/redexgen/X/HO;

.field public final A0U:Lcom/facebook/ads/redexgen/X/Im;

.field public final A0V:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/kj;",
            ">;"
        }
    .end annotation
.end field

.field public final A0W:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/IX;",
            ">;"
        }
    .end annotation
.end field

.field public final A0X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;"
        }
    .end annotation
.end field

.field public final A0Y:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3061
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vtb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vbKonC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9ohrxt3rIVPnhyMUHrYVmyK7bOK5FZ2r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2NigTWH0ge82u7sbUdSeL8Wtj6iQtHIS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zZrcpvCeqeJUqHmK3YGTET67EQVL4Dlr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FEfAuyU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TXQt6Bb5wsq1E0rpiydPRGzBJonmO6nW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "L3NiJ083BoYvWzKRwautviQbODBNEwGW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kc;->A0D()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kd;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0b:Lcom/facebook/ads/redexgen/X/Gb;

    .line 3062
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0d:[B

    .line 3063
    new-instance v3, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 3064
    const/16 v2, 0x347

    const/16 v1, 0x12

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0c:Lcom/facebook/ads/redexgen/X/or;

    .line 3065
    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 93568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kc;-><init>(I)V

    .line 93569
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 93570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/kc;-><init>(ILcom/facebook/ads/redexgen/X/4R;)V

    .line 93571
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/4R;)V
    .locals 2

    .line 93572
    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;-><init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Im;Ljava/util/List;)V

    .line 93573
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Im;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/4R;",
            "Lcom/facebook/ads/redexgen/X/Im;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;)V"
        }
    .end annotation

    .line 93574
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/kc;-><init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Im;Ljava/util/List;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 93575
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Im;Ljava/util/List;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Additional fields for custom behaviors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/4R;",
            "Lcom/facebook/ads/redexgen/X/Im;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/H1;",
            ")V"
        }
    .end annotation

    .line 93576
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93577
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0A:J

    .line 93578
    iput p1, p0, Lcom/facebook/ads/redexgen/X/kc;->A0K:I

    .line 93579
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    .line 93580
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    .line 93581
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0X:Ljava/util/List;

    .line 93582
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/kc;->A0S:Lcom/facebook/ads/redexgen/X/H1;

    .line 93583
    new-instance v2, Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/HO;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0T:Lcom/facebook/ads/redexgen/X/HO;

    .line 93584
    const/16 v4, 0x10

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    .line 93585
    sget-object v3, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0P:Lcom/facebook/ads/redexgen/X/4J;

    .line 93586
    const/4 v3, 0x5

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0O:Lcom/facebook/ads/redexgen/X/4J;

    .line 93587
    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    .line 93588
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0Y:[B

    .line 93589
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0Y:[B

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0Q:Lcom/facebook/ads/redexgen/X/4J;

    .line 93590
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    .line 93591
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    .line 93592
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    .line 93593
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A08:J

    .line 93594
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0B:J

    .line 93595
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0C:J

    .line 93596
    sget-object v0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    .line 93597
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    .line 93598
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    .line 93599
    return-void
.end method

.method public static A00(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93600
    if-ltz p0, :cond_0

    .line 93601
    return p0

    .line 93602
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2bc

    const/16 v1, 0x1b

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IY;IILcom/facebook/ads/redexgen/X/4J;I)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93603
    move/from16 v7, p4

    const/16 v1, 0x8

    move-object/from16 p4, p3

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93604
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93605
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A00(I)I

    move-result v3

    .line 93606
    .local v3, "atomFlags":I
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    .line 93607
    .local v4, "track":Lcom/facebook/ads/redexgen/X/Im;
    iget-object v6, v8, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 93608
    .local v5, "fragment":Lcom/facebook/ads/redexgen/X/Io;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/IP;

    .line 93609
    .local v6, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/IP;
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Io;->A0C:[I

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    aput v0, v1, p1

    .line 93610
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Io;->A0E:[J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Io;->A04:J

    aput-wide v0, v4, p1

    .line 93611
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_0

    .line 93612
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Io;->A0E:[J

    aget-wide v9, v4, p1

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v9, v0

    aput-wide v9, v4, p1

    .line 93613
    :cond_0
    and-int/lit8 v0, v3, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/16 v27, 0x1

    .line 93614
    .local v7, "firstSampleFlagsPresent":Z
    :goto_0
    iget v14, v5, Lcom/facebook/ads/redexgen/X/IP;->A01:I

    .line 93615
    .local v10, "firstSampleFlags":I
    if-eqz v27, :cond_1

    .line 93616
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v14

    .line 93617
    :cond_1
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_f

    const/16 v17, 0x1

    .line 93618
    .local v11, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_e

    const/16 v26, 0x1

    .line 93619
    .local v12, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_d

    const/16 v25, 0x1

    .line 93620
    .local v13, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_c

    const/16 v24, 0x1

    .line 93621
    .local v14, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v22, 0x0

    .line 93622
    .local v15, "edtsOffset":J
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/kc;->A0a(Lcom/facebook/ads/redexgen/X/Im;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93623
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v22, v0, v1

    .line 93624
    :cond_2
    iget-object v13, v6, Lcom/facebook/ads/redexgen/X/Io;->A0B:[I

    .line 93625
    .local v9, "sampleSizeTable":[I
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Io;->A0D:[J

    .line 93626
    .local v8, "samplePresentationTimesUs":[J
    .end local v1    # "fullAtom":I
    .local v18, "fullAtom":I
    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/Io;->A0G:[Z

    .line 93627
    .local v1, "sampleIsSyncFrameTable":[Z
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    .end local v3    # "atomFlags":I
    .local v19, "atomFlags":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_b

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b

    const/16 v21, 0x1

    .line 93628
    .local v2, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Io;->A0C:[I

    aget v0, v0, p1

    add-int v9, v7, v0

    .line 93629
    .local v3, "trackRunEnd":I
    .end local v1    # "sampleIsSyncFrameTable":[Z
    .end local v2    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v26, "sampleIsSyncFrameTable":[Z
    .local v27, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 93630
    .local v1, "timescale":J
    .end local v9    # "sampleSizeTable":[I
    .end local v10    # "firstSampleFlags":I
    .local v28, "firstSampleFlags":I
    .local v29, "sampleSizeTable":[I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Io;->A05:J

    .line 93631
    .local v9, "cumulativeTime":J
    .local v4, "i":I
    .local p0, "track":Lcom/facebook/ads/redexgen/X/Im;
    :goto_6
    if-ge v7, v9, :cond_12

    .line 93632
    if-eqz v17, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_11

    sget-object v11, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "Vvd"

    const/4 v0, 0x0

    aput-object v1, v11, v0

    :goto_7
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/kc;->A00(I)I

    move-result v11

    .line 93633
    .local v11, "sampleDuration":I
    if-eqz v26, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A00(I)I

    move-result v20

    .line 93634
    .local v12, "sampleSize":I
    if-eqz v25, :cond_7

    .line 93635
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v10

    .line 93636
    .local v7, "sampleFlags":I
    :goto_9
    const/4 v0, 0x0

    .line 93637
    .local v20, "sampleCompositionTimeOffset":I
    if-eqz v24, :cond_3

    .line 93638
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93639
    .end local v20    # "sampleCompositionTimeOffset":I
    .local v6, "sampleCompositionTimeOffset":I
    .local p4, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/IP;
    .end local v13    # "sampleFlagsPresent":Z
    .end local v14    # "sampleCompositionTimeOffsetsPresent":Z
    .local p5, "sampleFlagsPresent":Z
    .local p6, "sampleCompositionTimeOffsetsPresent":Z
    :cond_3
    int-to-long v0, v0

    add-long/2addr v0, v2

    sub-long v0, v0, v22

    .line 93640
    .local v13, "samplePresentationTime":J
    const-wide/32 p0, 0xf4240

    move-wide/from16 v28, v0

    move-wide/from16 p2, v15

    invoke-static/range {v28 .. v33}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    aput-wide v0, v4, v7

    .line 93641
    .end local v1    # "timescale":J
    .local v20, "timescale":J
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Io;->A09:Z

    if-nez v0, :cond_4

    .line 93642
    aget-wide v18, v4, v7

    .end local v6    # "sampleCompositionTimeOffset":I
    .local v22, "sampleCompositionTimeOffset":I
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    .end local v13    # "samplePresentationTime":J
    .local v23, "samplePresentationTime":J
    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A02:J

    add-long v18, v18, v0

    aput-wide v18, v4, v7

    .line 93643
    .end local v6
    .end local v13
    .restart local v22    # "sampleCompositionTimeOffset":I
    .restart local v23    # "samplePresentationTime":J
    :cond_4
    aput v20, v13, v7

    .line 93644
    shr-int/lit8 v1, v10, 0x10

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_6

    if-eqz v21, :cond_5

    if-nez v7, :cond_6

    :cond_5
    const/4 v0, 0x1

    :goto_a
    aput-boolean v0, v12, v7

    .line 93645
    int-to-long v0, v11

    add-long/2addr v2, v0

    .line 93646
    .end local v7    # "sampleFlags":I
    .end local v11    # "sampleDuration":I
    .end local v12    # "sampleSize":I
    .end local v22    # "sampleCompositionTimeOffset":I
    .end local v23    # "samplePresentationTime":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 93647
    :cond_6
    const/4 v0, 0x0

    goto :goto_a

    .line 93648
    :cond_7
    if-nez v7, :cond_8

    if-eqz v27, :cond_8

    move v10, v14

    goto :goto_9

    .end local v7
    .local p3, "firstSampleFlagsPresent":Z
    :cond_8
    iget v10, v5, Lcom/facebook/ads/redexgen/X/IP;->A01:I

    goto :goto_9

    .line 93649
    .end local v12
    .local p2, "sampleSizesPresent":Z
    :cond_9
    iget v0, v5, Lcom/facebook/ads/redexgen/X/IP;->A03:I

    goto :goto_8

    .line 93650
    .end local v11
    .local p1, "sampleDurationsPresent":Z
    :cond_a
    iget v10, v5, Lcom/facebook/ads/redexgen/X/IP;->A00:I

    goto :goto_7

    .line 93651
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 93652
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 93653
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 93654
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 93655
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 93656
    :cond_10
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93657
    .end local v4    # "i":I
    .end local v20    # "timescale":J
    .end local p1    # "sampleDurationsPresent":Z
    .end local p2    # "sampleSizesPresent":Z
    .end local p3    # "firstSampleFlagsPresent":Z
    .end local p4    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/IP;
    .end local p5
    .end local p6
    .restart local v1    # "timescale":J
    .local v6, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/IP;
    .local v7, "firstSampleFlagsPresent":Z
    .local v11, "sampleDurationsPresent":Z
    .local v12, "sampleSizesPresent":Z
    .local v13, "sampleFlagsPresent":Z
    .restart local v14    # "sampleCompositionTimeOffsetsPresent":Z
    :cond_12
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Io;->A05:J

    .line 93658
    return v9
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 1

    .line 93659
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93660
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93661
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v0

    .line 93662
    .local p0, "version":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 2

    .line 93663
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93664
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93665
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v1

    .line 93666
    .local v1, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4J;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/IP;",
            ">;"
        }
    .end annotation

    .line 93667
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 93669
    .local v0, "trackId":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 93670
    .local v1, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    .line 93671
    .local v2, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 93672
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 93673
    .local v4, "defaultSampleFlags":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IP;-><init>(IIII)V

    .line 93674
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;J)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/lT;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93675
    const/16 v0, 0x8

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93676
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93677
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v1

    .line 93678
    .local v2, "version":I
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 93679
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v19

    .line 93680
    .local v10, "timescale":J
    .local v4, "offset":J
    if-nez v1, :cond_0

    .line 93681
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v15

    .line 93682
    .local v6, "earliestPresentationTime":J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    add-long p1, p1, v0

    .line 93683
    .end local v4    # "offset":J
    .end local v6    # "earliestPresentationTime":J
    .local v12, "offset":J
    .local v14, "earliestPresentationTime":J
    :goto_0
    const-wide/32 v17, 0xf4240

    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v13

    .line 93684
    .local v16, "earliestPresentationTimeUs":J
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 93685
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v7

    .line 93686
    .local v8, "referenceCount":I
    new-array v6, v7, [I

    .line 93687
    .local v9, "sizes":[I
    new-array v8, v7, [J

    .line 93688
    .local v6, "offsets":[J
    new-array v4, v7, [J

    .line 93689
    .local v7, "durationsUs":[J
    new-array v3, v7, [J

    .line 93690
    .local v4, "timesUs":[J
    .local v18, "time":J
    .local p0, "timeUs":J
    const/4 v2, 0x0

    move-wide v11, v13

    .local v12, "i":I
    .local v18, "offset":J
    .local p0, "time":J
    .local p2, "timeUs":J
    :goto_1
    if-ge v2, v7, :cond_2

    .line 93691
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 93692
    .local v13, "firstInt":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    .line 93693
    .local p4, "type":I
    if-nez v0, :cond_1

    .line 93694
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v9

    .line 93695
    .local p5, "referenceDuration":J
    const v0, 0x7fffffff

    and-int/2addr v0, v1

    aput v0, v6, v2

    .line 93696
    aput-wide p1, v8, v2

    .line 93697
    aput-wide v11, v3, v2

    .line 93698
    add-long/2addr v15, v9

    .line 93699
    const-wide/32 v17, 0xf4240

    .end local v4    # "timesUs":[J
    .local v3, "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .local p9, "fullAtom":I
    .local p10, "version":I
    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v13, "sizes":[I
    .local p7, "referenceCount":I
    .local p8, "firstInt":I
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v11

    .line 93700
    aget-wide v9, v3, v2

    sub-long v0, v11, v9

    aput-wide v0, v4, v2

    .line 93701
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 93702
    aget v0, v6, v2

    int-to-long v0, v0

    add-long p1, p1, v0

    .line 93703
    .end local p4
    .end local p5
    .end local p8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93704
    .end local v6
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v15

    .line 93705
    .restart local v6    # "offsets":[J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    add-long p1, p1, v0

    goto :goto_0

    .line 93706
    .end local v3    # "timesUs":[J
    .end local p7
    .end local p9
    .end local p10
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "timesUs":[J
    .restart local v6    # "offsets":[J
    .restart local v7    # "durationsUs":[J
    .restart local v8    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v13, "firstInt":I
    .restart local p4
    .end local v4    # "timesUs":[J
    .restart local v3    # "timesUs":[J
    :cond_1
    const/16 v2, 0x2f4

    const/16 v1, 0x1c

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 93707
    .end local v3    # "timesUs":[J
    .end local v13    # "firstInt":I
    .end local p4
    .restart local v4    # "timesUs":[J
    .end local v4    # "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .end local v9    # "sizes":[I
    .end local v12    # "i":I
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v3    # "timesUs":[J
    .local v13, "sizes":[I
    .restart local p9
    .restart local p10
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lT;

    invoke-direct {v0, v6, v8, v4, v3}, Lcom/facebook/ads/redexgen/X/lT;-><init>([I[J[J[J)V

    .line 93708
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ki;",
            ">;)",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData;"
        }
    .end annotation

    .line 93709
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 93710
    .local v0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 93711
    .local v1, "leafChildrenSize":I
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 93712
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ki;

    .line 93713
    .local v3, "child":Lcom/facebook/ads/redexgen/X/ki;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x70737368    # 3.013775E29f

    if-ne v1, v0, :cond_1

    .line 93714
    if-nez v4, :cond_0

    .line 93715
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93716
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v7

    .line 93717
    .local v4, "psshData":[B
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/If;->A02([B)Ljava/util/UUID;

    move-result-object v3

    .line 93718
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v3, :cond_2

    .line 93719
    const/16 v2, 0xcc

    const/16 v1, 0x16

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x226

    const/16 v1, 0x2a

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93720
    .end local v3    # "child":Lcom/facebook/ads/redexgen/X/ki;
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93721
    :cond_2
    const/16 v2, 0x381

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, v3, v1, v7}, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93722
    .end local v2    # "i":I
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    invoke-direct {v0, v4}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private A07(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/IP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IP;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/IP;"
        }
    .end annotation

    .line 93723
    .local p1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 93724
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    return-object v0

    .line 93725
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    return-object v0
.end method

.method public static A08(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/IY;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/IY;"
        }
    .end annotation

    .line 93726
    .local v9, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/FragmentedMp4Extractor2$TrackBundle;>;"
    const/4 v9, 0x0

    .line 93727
    .local v0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/IY;
    const-wide v7, 0x7fffffffffffffffL

    .line 93728
    .local v1, "nextSampleOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 93729
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 93730
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/IY;

    .line 93731
    .local v5, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IY;->A00(Lcom/facebook/ads/redexgen/X/IY;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, v3, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-eq v1, v0, :cond_1

    .line 93732
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IY;->A00(Lcom/facebook/ads/redexgen/X/IY;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "bWFL5LbHycaN2QeAwKakifUxbxentXmn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    iget v1, v3, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A01:I

    if-ne v1, v0, :cond_2

    .line 93733
    .end local v5    # "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    .end local v6
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93734
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IY;->A05()J

    move-result-wide v1

    .line 93735
    .local v6, "sampleOffset":J
    cmp-long v0, v1, v7

    if-gez v0, :cond_1

    .line 93736
    move-object v9, v3

    .line 93737
    move-wide v7, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93738
    .end local v4    # "i":I
    :cond_4
    return-object v9
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4J;Landroid/util/SparseArray;Z)Lcom/facebook/ads/redexgen/X/IY;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;Z)",
            "Lcom/facebook/ads/redexgen/X/IY;"
        }
    .end annotation

    .line 93739
    .local p4, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/FragmentedMp4Extractor2$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93740
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93741
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A00(I)I

    move-result v7

    .line 93742
    .local v1, "atomFlags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93743
    .local v2, "trackId":I
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    check-cast v6, Lcom/facebook/ads/redexgen/X/IY;

    .line 93744
    .local v3, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    if-nez v6, :cond_2

    .line 93745
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "jDobgNhtM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 93746
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93747
    :cond_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    .line 93748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v1

    .line 93749
    .local v4, "baseDataPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A04:J

    .line 93750
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    .line 93751
    .end local v4    # "baseDataPosition":J
    :cond_3
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IY;->A04:Lcom/facebook/ads/redexgen/X/IP;

    .line 93752
    .local v4, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/IP;
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_7

    .line 93753
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 93754
    .local v5, "defaultSampleDescriptionIndex":I
    :goto_1
    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_6

    .line 93755
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    .line 93756
    .local v6, "defaultSampleDuration":I
    :goto_2
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_5

    .line 93757
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 93758
    .local v7, "defaultSampleSize":I
    :goto_3
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_4

    .line 93759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 93760
    .local p0, "defaultSampleFlags":I
    :goto_4
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IP;-><init>(IIII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    .line 93761
    return-object v6

    .line 93762
    :cond_4
    iget v2, v1, Lcom/facebook/ads/redexgen/X/IP;->A01:I

    goto :goto_4

    .line 93763
    :cond_5
    iget v3, v1, Lcom/facebook/ads/redexgen/X/IP;->A03:I

    goto :goto_3

    .line 93764
    :cond_6
    iget v4, v1, Lcom/facebook/ads/redexgen/X/IP;->A00:I

    goto :goto_2

    .line 93765
    :cond_7
    iget v5, v1, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    goto :goto_1
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0Z:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "p0M5dFs6dnHIC4r2oiX9lIp2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B()V
    .locals 1

    .line 93766
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 93767
    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    .line 93768
    return-void
.end method

.method private A0C()V
    .locals 7

    .line 93769
    const/16 v5, 0x64

    .line 93770
    .local v0, "nextExtraTrackId":I
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    .line 93771
    const/4 v6, 0x0

    .line 93772
    .local v1, "emsgTrackOutputCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0S:Lcom/facebook/ads/redexgen/X/H1;

    if-eqz v0, :cond_0

    .line 93773
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    add-int/lit8 v1, v6, 0x1

    .end local v1    # "emsgTrackOutputCount":I
    .local v3, "emsgTrackOutputCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0S:Lcom/facebook/ads/redexgen/X/H1;

    aput-object v0, v2, v6

    move v6, v1

    .line 93774
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v1    # "emsgTrackOutputCount":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0K:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 93775
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    add-int/lit8 v3, v6, 0x1

    .end local v1    # "emsgTrackOutputCount":I
    .restart local v3    # "emsgTrackOutputCount":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    add-int/lit8 v1, v5, 0x1

    .line 93776
    .end local v0    # "nextExtraTrackId":I
    .local v5, "nextExtraTrackId":I
    const/4 v0, 0x5

    invoke-interface {v2, v5, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    aput-object v0, v4, v6

    move v6, v3

    move v5, v1

    .line 93777
    .end local v3    # "emsgTrackOutputCount":I
    .end local v5    # "nextExtraTrackId":I
    .restart local v0    # "nextExtraTrackId":I
    .restart local v1    # "emsgTrackOutputCount":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/4a;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    .line 93778
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 93779
    .local v5, "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    sget-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0c:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 93780
    .end local v5    # "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93781
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    .line 93782
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 93783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    add-int/lit8 v2, v5, 0x1

    .end local v0    # "nextExtraTrackId":I
    .local v4, "nextExtraTrackId":I
    const/4 v0, 0x3

    invoke-interface {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    .line 93784
    .local v0, "output":Lcom/facebook/ads/redexgen/X/H1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0X:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 93785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    aput-object v1, v0, v3

    .line 93786
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v3, v3, 0x1

    move v5, v2

    goto :goto_1

    .line 93787
    .end local v2    # "i":I
    .end local v4    # "nextExtraTrackId":I
    .local v0, "nextExtraTrackId":I
    :cond_3
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x38a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0Z:[B

    return-void

    :array_0
    .array-data 1
        0x8t
        0x41t
        0x5bt
        0x8t
        0x4ct
        0x41t
        0x4et
        0x4et
        0x4dt
        0x5at
        0x4dt
        0x46t
        0x5ct
        0x8t
        0x4et
        0x5at
        0x47t
        0x45t
        0x8t
        0x4et
        0x5at
        0x49t
        0x4ft
        0x45t
        0x4dt
        0x46t
        0x5ct
        0x8t
        0x5bt
        0x49t
        0x45t
        0x58t
        0x44t
        0x4dt
        0x8t
        0x4bt
        0x47t
        0x5dt
        0x46t
        0x5ct
        0x6dt
        0x24t
        0x3et
        0x6dt
        0x2at
        0x3ft
        0x28t
        0x2ct
        0x39t
        0x28t
        0x3ft
        0x6dt
        0x39t
        0x25t
        0x2ct
        0x23t
        0x6dt
        0x2bt
        0x3ft
        0x2ct
        0x2at
        0x20t
        0x28t
        0x23t
        0x39t
        0x6dt
        0x3et
        0x2ct
        0x20t
        0x3dt
        0x21t
        0x28t
        0x6dt
        0x2et
        0x22t
        0x38t
        0x23t
        0x39t
        0x2ft
        0x1at
        0x1t
        0x3t
        0x4et
        0x1dt
        0x7t
        0x14t
        0xbt
        0x4et
        0x2t
        0xbt
        0x1dt
        0x1dt
        0x4et
        0x1at
        0x6t
        0xft
        0x0t
        0x4et
        0x6t
        0xbt
        0xft
        0xat
        0xbt
        0x1ct
        0x4et
        0x2t
        0xbt
        0x0t
        0x9t
        0x1at
        0x6t
        0x4et
        0x46t
        0x1bt
        0x0t
        0x1dt
        0x1bt
        0x1et
        0x1et
        0x1t
        0x1ct
        0x1at
        0xbt
        0xat
        0x47t
        0x40t
        0x46t
        0x6dt
        0x77t
        0x71t
        0x7at
        0x23t
        0x60t
        0x6ct
        0x76t
        0x6dt
        0x77t
        0x23t
        0x6at
        0x6dt
        0x23t
        0x70t
        0x61t
        0x64t
        0x73t
        0x23t
        0x22t
        0x3et
        0x23t
        0x32t
        0x23t
        0x2bt
        0x76t
        0x6dt
        0x70t
        0x76t
        0x73t
        0x73t
        0x6ct
        0x71t
        0x77t
        0x66t
        0x67t
        0x2at
        0x2dt
        0x1dt
        0x36t
        0x2ct
        0x2at
        0x21t
        0x78t
        0x3bt
        0x37t
        0x2dt
        0x36t
        0x2ct
        0x78t
        0x31t
        0x36t
        0x78t
        0x2bt
        0x3ft
        0x28t
        0x3ct
        0x78t
        0x79t
        0x65t
        0x78t
        0x69t
        0x78t
        0x70t
        0x2dt
        0x36t
        0x2bt
        0x2dt
        0x28t
        0x28t
        0x37t
        0x2at
        0x2ct
        0x3dt
        0x3ct
        0x71t
        0x76t
        0x47t
        0x73t
        0x60t
        0x66t
        0x6ct
        0x64t
        0x6ft
        0x75t
        0x64t
        0x65t
        0x4ct
        0x71t
        0x35t
        0x44t
        0x79t
        0x75t
        0x73t
        0x60t
        0x62t
        0x75t
        0x6et
        0x73t
        0xet
        0x20t
        0x29t
        0x28t
        0x35t
        0x2et
        0x29t
        0x20t
        0x67t
        0x29t
        0x22t
        0x20t
        0x26t
        0x33t
        0x2et
        0x31t
        0x22t
        0x67t
        0x28t
        0x21t
        0x21t
        0x34t
        0x22t
        0x33t
        0x67t
        0x33t
        0x28t
        0x67t
        0x34t
        0x26t
        0x2at
        0x37t
        0x2bt
        0x22t
        0x67t
        0x23t
        0x26t
        0x33t
        0x26t
        0x69t
        0x76t
        0x51t
        0x49t
        0x5et
        0x53t
        0x56t
        0x5bt
        0x1ft
        0x71t
        0x7et
        0x73t
        0x1ft
        0x53t
        0x5at
        0x51t
        0x58t
        0x4bt
        0x57t
        0x0t
        0x29t
        0x2dt
        0x2at
        0x6ct
        0x2dt
        0x38t
        0x23t
        0x21t
        0x6ct
        0x28t
        0x29t
        0x2at
        0x25t
        0x22t
        0x29t
        0x3ft
        0x6ct
        0x29t
        0x34t
        0x38t
        0x29t
        0x22t
        0x28t
        0x29t
        0x28t
        0x6ct
        0x2dt
        0x38t
        0x23t
        0x21t
        0x6ct
        0x3ft
        0x25t
        0x36t
        0x29t
        0x6ct
        0x64t
        0x39t
        0x22t
        0x3ft
        0x39t
        0x3ct
        0x3ct
        0x23t
        0x3et
        0x38t
        0x29t
        0x28t
        0x65t
        0x62t
        0x4bt
        0x62t
        0x66t
        0x61t
        0x27t
        0x66t
        0x73t
        0x68t
        0x6at
        0x27t
        0x70t
        0x6et
        0x73t
        0x6ft
        0x27t
        0x6bt
        0x62t
        0x69t
        0x60t
        0x73t
        0x6ft
        0x27t
        0x39t
        0x27t
        0x35t
        0x36t
        0x33t
        0x30t
        0x33t
        0x3ft
        0x34t
        0x31t
        0x33t
        0x30t
        0x27t
        0x2ft
        0x72t
        0x69t
        0x74t
        0x72t
        0x77t
        0x77t
        0x68t
        0x75t
        0x73t
        0x62t
        0x63t
        0x2et
        0x29t
        0x3et
        0x17t
        0x17t
        0x2t
        0x14t
        0x5t
        0x51t
        0x5t
        0x1et
        0x51t
        0x14t
        0x1ft
        0x12t
        0x3t
        0x8t
        0x1t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x51t
        0x15t
        0x10t
        0x5t
        0x10t
        0x51t
        0x6t
        0x10t
        0x2t
        0x51t
        0x1ft
        0x14t
        0x16t
        0x10t
        0x5t
        0x18t
        0x7t
        0x14t
        0x5ft
        0x78t
        0x51t
        0x51t
        0x44t
        0x52t
        0x43t
        0x17t
        0x43t
        0x58t
        0x17t
        0x52t
        0x59t
        0x53t
        0x17t
        0x58t
        0x51t
        0x17t
        0x5at
        0x53t
        0x56t
        0x43t
        0x17t
        0x40t
        0x56t
        0x44t
        0x17t
        0x59t
        0x52t
        0x50t
        0x56t
        0x43t
        0x5et
        0x41t
        0x52t
        0x19t
        0x1bt
        0x22t
        0x31t
        0x26t
        0x26t
        0x3dt
        0x30t
        0x3dt
        0x3at
        0x33t
        0x74t
        0x0t
        0x26t
        0x35t
        0x37t
        0x3ft
        0x11t
        0x3at
        0x37t
        0x26t
        0x2dt
        0x24t
        0x20t
        0x3dt
        0x3bt
        0x3at
        0x16t
        0x3bt
        0x2ct
        0x74t
        0x24t
        0x35t
        0x26t
        0x35t
        0x39t
        0x31t
        0x20t
        0x31t
        0x26t
        0x27t
        0x74t
        0x3dt
        0x27t
        0x74t
        0x21t
        0x3at
        0x27t
        0x21t
        0x24t
        0x24t
        0x3bt
        0x26t
        0x20t
        0x31t
        0x30t
        0x7at
        0x23t
        0x11t
        0x19t
        0xat
        0x50t
        0x3t
        0x11t
        0x1dt
        0x0t
        0x1ct
        0x15t
        0x50t
        0x13t
        0x1ft
        0x5t
        0x1et
        0x4t
        0x50t
        0x46t
        0x70t
        0x7bt
        0x76t
        0x35t
        0x66t
        0x74t
        0x78t
        0x65t
        0x79t
        0x70t
        0x35t
        0x76t
        0x7at
        0x60t
        0x7bt
        0x61t
        0x35t
        0x5t
        0x3dt
        0x3ft
        0x26t
        0x26t
        0x33t
        0x32t
        0x76t
        0x26t
        0x25t
        0x25t
        0x3et
        0x76t
        0x37t
        0x22t
        0x39t
        0x3bt
        0x76t
        0x7et
        0x30t
        0x37t
        0x3ft
        0x3at
        0x33t
        0x32t
        0x76t
        0x22t
        0x39t
        0x76t
        0x33t
        0x2et
        0x22t
        0x24t
        0x37t
        0x35t
        0x22t
        0x76t
        0x23t
        0x23t
        0x3ft
        0x32t
        0x7ft
        0x4et
        0x76t
        0x74t
        0x6dt
        0x6dt
        0x74t
        0x73t
        0x7at
        0x3dt
        0x7ct
        0x69t
        0x72t
        0x70t
        0x3dt
        0x6at
        0x74t
        0x69t
        0x75t
        0x3dt
        0x71t
        0x78t
        0x73t
        0x7at
        0x69t
        0x75t
        0x3dt
        0x23t
        0x3dt
        0x2ft
        0x2ct
        0x29t
        0x2at
        0x29t
        0x25t
        0x2et
        0x2bt
        0x29t
        0x2at
        0x3dt
        0x35t
        0x68t
        0x73t
        0x6et
        0x68t
        0x6dt
        0x6dt
        0x72t
        0x6ft
        0x69t
        0x78t
        0x79t
        0x34t
        0x33t
        0x1t
        0x39t
        0x3bt
        0x22t
        0x22t
        0x3bt
        0x3ct
        0x35t
        0x72t
        0x27t
        0x3ct
        0x21t
        0x27t
        0x22t
        0x22t
        0x3dt
        0x20t
        0x26t
        0x37t
        0x36t
        0x72t
        0x37t
        0x3ft
        0x21t
        0x35t
        0x72t
        0x24t
        0x37t
        0x20t
        0x21t
        0x3bt
        0x3dt
        0x3ct
        0x68t
        0x72t
        0x17t
        0x2ct
        0x27t
        0x3at
        0x32t
        0x27t
        0x21t
        0x36t
        0x27t
        0x26t
        0x62t
        0x2ft
        0x2dt
        0x2dt
        0x34t
        0x62t
        0x20t
        0x2dt
        0x3at
        0x6ct
        0x5ct
        0x67t
        0x6ct
        0x71t
        0x79t
        0x6ct
        0x6at
        0x7dt
        0x6ct
        0x6dt
        0x29t
        0x67t
        0x6ct
        0x6et
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x29t
        0x7ft
        0x68t
        0x65t
        0x7ct
        0x6ct
        0x33t
        0x29t
        0x23t
        0x18t
        0x13t
        0xet
        0x6t
        0x13t
        0x15t
        0x2t
        0x13t
        0x12t
        0x56t
        0x5t
        0x17t
        0x1ft
        0x19t
        0x56t
        0x13t
        0x18t
        0x2t
        0x4t
        0xft
        0x56t
        0x15t
        0x19t
        0x3t
        0x18t
        0x2t
        0x4ct
        0x56t
        0x50t
        0x6bt
        0x6dt
        0x64t
        0x6bt
        0x61t
        0x69t
        0x60t
        0x61t
        0x25t
        0x6ct
        0x6bt
        0x61t
        0x6ct
        0x77t
        0x60t
        0x66t
        0x71t
        0x25t
        0x77t
        0x60t
        0x63t
        0x60t
        0x77t
        0x60t
        0x6bt
        0x66t
        0x60t
        0x72t
        0x45t
        0x56t
        0x4dt
        0x45t
        0x46t
        0x48t
        0x41t
        0x4t
        0x48t
        0x41t
        0x4at
        0x43t
        0x50t
        0x4ct
        0x4t
        0x40t
        0x41t
        0x57t
        0x47t
        0x56t
        0x4dt
        0x54t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0x4t
        0x4dt
        0x4at
        0x4t
        0x57t
        0x43t
        0x54t
        0x40t
        0x4t
        0x42t
        0x4bt
        0x51t
        0x4at
        0x40t
        0x4t
        0xct
        0x51t
        0x4at
        0x57t
        0x51t
        0x54t
        0x54t
        0x4bt
        0x56t
        0x50t
        0x41t
        0x40t
        0xdt
        0x66t
        0x77t
        0x77t
        0x6bt
        0x6et
        0x64t
        0x66t
        0x73t
        0x6et
        0x68t
        0x69t
        0x28t
        0x7ft
        0x2at
        0x62t
        0x6at
        0x74t
        0x60t
        0x58t
        0x49t
        0x49t
        0x55t
        0x50t
        0x5at
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x16t
        0x41t
        0x14t
        0x54t
        0x49t
        0xdt
        0x14t
        0x4ft
        0x4dt
        0x4dt
        0x34t
        0x20t
        0x31t
        0x3ct
        0x3at
        0x7at
        0x34t
        0x36t
        0x61t
        0x48t
        0x57t
        0x5at
        0x5bt
        0x51t
        0x11t
        0x56t
        0x5bt
        0x48t
        0x5dt
        0x7et
        0x61t
        0x6ct
        0x6dt
        0x67t
        0x27t
        0x65t
        0x78t
        0x3ct
    .end array-data
.end method

.method private A0E(J)V
    .locals 12

    .line 93788
    move-object v3, p0

    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 93789
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/IX;

    .line 93790
    .local v1, "metadataSampleInfo":Lcom/facebook/ads/redexgen/X/IX;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    .line 93791
    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "VR2FeNKrGWLUx6XQMfWHox9ZNtks2zuu"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "s2y9CEVkGFcMGmJDsuNOnRFQ2pMNKAx2"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/IX;->A01:J

    .line 93792
    .local v2, "metadataSampleTimeUs":J
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/IX;->A02:Z

    if-eqz v0, :cond_1

    .line 93793
    add-long/2addr v6, p1

    .line 93794
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    if-eqz v0, :cond_2

    .line 93795
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/4R;->A05(J)J

    move-result-wide v6

    .line 93796
    :cond_2
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v1, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v4, v0

    .line 93797
    .local p2, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    iget v9, v2, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    iget v10, v3, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 93798
    .end local p2    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93799
    :cond_4
    return-void
.end method

.method private A0F(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93800
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/kj;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 93801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0N(Lcom/facebook/ads/redexgen/X/kj;)V

    goto :goto_0

    .line 93802
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kc;->A0B()V

    .line 93803
    return-void
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/4J;ILcom/facebook/ads/redexgen/X/Io;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93804
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93805
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93806
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A00(I)I

    move-result v1

    .line 93807
    .local v1, "flags":I
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_3

    .line 93808
    and-int/lit8 v0, v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 93809
    .local v2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result p1

    .line 93810
    .local p1, "sampleCount":I
    if-nez p1, :cond_1

    .line 93811
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Io;->A0F:[Z

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    invoke-static {v1, v2, v0, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 93812
    return-void

    .line 93813
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 93814
    :cond_1
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    if-ne p1, v0, :cond_2

    .line 93815
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A0F:[Z

    invoke-static {v0, v2, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 93816
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Io;->A02(I)V

    .line 93817
    invoke-virtual {p2, p0}, Lcom/facebook/ads/redexgen/X/Io;->A04(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 93818
    return-void

    .line 93819
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x214

    const/16 v1, 0x12

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x28

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 93820
    .end local v2    # "subsampleEncryption":Z
    .end local p1    # "sampleCount":I
    :cond_3
    const/16 v2, 0x1ca

    const/16 v1, 0x38

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/4J;Landroid/net/Uri;)V
    .locals 19
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding Uri for eMsg"
    .end annotation

    .line 93821
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 93822
    return-void

    .line 93823
    :cond_0
    const/16 v0, 0x8

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93824
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "i2btDlVidn"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 93825
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v3

    .line 93826
    .local v3, "version":I
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 93827
    .local v4, "presentationTimeDeltaUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 93828
    .local v6, "sampleTimeUs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v3, :pswitch_data_0

    .line 93829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x285

    const/16 v1, 0x23

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xcc

    const/16 v1, 0x16

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93830
    return-void

    .line 93831
    :pswitch_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v12

    .line 93832
    .local v16, "timescale":J
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    .line 93833
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v13

    .line 93834
    .local v10, "durationMs":J
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v15

    .line 93835
    .local v12, "id":J
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 93836
    .local v14, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 93837
    .local v15, "value":Ljava/lang/String;
    goto :goto_0

    .line 93838
    .end local v10    # "durationMs":J
    .end local v12    # "id":J
    .end local v14    # "schemeIdUri":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "timescale":J
    :pswitch_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 93839
    .restart local v14    # "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 93840
    .restart local v15    # "value":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v17

    .line 93841
    .local v10, "timescale":J
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v13

    const-wide/32 v15, 0xf4240

    invoke-static/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v5

    .line 93842
    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/kc;->A0C:J

    cmp-long v10, v3, v8

    if-eqz v10, :cond_2

    .line 93843
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A0C:J

    add-long/2addr v0, v5

    .line 93844
    :cond_2
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    invoke-static/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v13

    .line 93845
    .local v12, "durationMs":J
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v15

    .line 93846
    .local v16, "id":J
    .end local v10    # "timescale":J
    .end local v12    # "durationMs":J
    .end local v14    # "schemeIdUri":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "id":J
    .local v18, "durationMs":J
    .local p1, "id":J
    .local p3, "schemeIdUri":Ljava/lang/String;
    .local p4, "value":Ljava/lang/String;
    .local p5, "timescale":J
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    new-array v4, v3, [B

    .line 93847
    .local v15, "messageData":[B
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v8

    const/4 v3, 0x0

    invoke-virtual {v7, v4, v3, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 93848
    new-instance v10, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;

    const/4 v8, 0x0

    .end local v15    # "messageData":[B
    .local v9, "messageData":[B
    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 93849
    .local v10, "eventMessage":Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/kc;->A0T:Lcom/facebook/ads/redexgen/X/HO;

    .line 93850
    invoke-virtual {v3, v10}, Lcom/facebook/ads/redexgen/X/HO;->A01(Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;)[B

    move-result-object v3

    new-instance v11, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v11, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    .line 93851
    .local v11, "encodedEventMessage":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v7

    .line 93852
    .local v12, "sampleSize":I
    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v9, v10

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_3

    aget-object v3, v10, v4

    .line 93853
    .local v1, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93854
    move-object/from16 v8, p2

    invoke-interface {v3, v8}, Lcom/facebook/ads/redexgen/X/H1;->AJu(Landroid/net/Uri;)V

    .line 93855
    invoke-interface {v3, v11, v7}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 93856
    .end local v1    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 93857
    :cond_3
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v8

    if-nez v3, :cond_5

    .line 93858
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IX;

    invoke-direct {v0, v5, v6, v1, v7}, Lcom/facebook/ads/redexgen/X/IX;-><init>(JZI)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 93859
    iget v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    .line 93860
    :cond_4
    :goto_2
    return-void

    .line 93861
    :cond_5
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 93862
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    const/4 v4, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/IX;

    invoke-direct {v3, v0, v1, v4, v7}, Lcom/facebook/ads/redexgen/X/IX;-><init>(JZI)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 93863
    iget v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    goto :goto_2

    .line 93864
    :cond_6
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    if-eqz v3, :cond_7

    .line 93865
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_9

    sget-object v5, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v4, "dSij3ZZr7drragDO7KaW8OWZIZwByPGb"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    const-string v4, "O4MuDOrrUt3KGtyHElmFzP2mmpN9Ut0I"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A05(J)J

    move-result-wide v0

    .line 93866
    :cond_7
    :goto_3
    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/kc;->A0A:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v8, v4

    if-eqz v3, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/i2;->A12:Lcom/facebook/ads/redexgen/X/i2;

    .line 93867
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 93868
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/kc;->A0A:J

    .line 93869
    :cond_8
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/kc;->A0J:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v5, v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A05(J)J

    move-result-wide v0

    goto :goto_3

    :cond_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v3, "lJ55r5gDB38Ao7rNsYIhv4IUy3LH5Ini"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    aget-object v8, v6, v2

    .line 93870
    .local v15, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    move-wide v9, v0

    move v12, v7

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 93871
    .end local v15    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93872
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93873
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 93874
    .local v1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/II;->A00(I)I

    move-result v0

    .line 93875
    .local v2, "flags":I
    and-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 93876
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 93877
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v4

    .line 93878
    .local v0, "entryCount":I
    if-ne v4, v0, :cond_2

    .line 93879
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v0

    .line 93880
    .local v3, "version":I
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    .line 93881
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    .line 93882
    return-void

    .line 93883
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    goto :goto_0

    .line 93884
    .end local v3    # "version":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d7

    const/16 v1, 0x1d

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93885
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0G(Lcom/facebook/ads/redexgen/X/4J;ILcom/facebook/ads/redexgen/X/Io;)V

    .line 93886
    return-void
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93887
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 93888
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 93889
    sget-object v0, Lcom/facebook/ads/redexgen/X/kc;->A0d:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93890
    return-void

    .line 93891
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0G(Lcom/facebook/ads/redexgen/X/4J;ILcom/facebook/ads/redexgen/X/Io;)V

    .line 93892
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New parameter for getUri()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93893
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    long-to-int v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    sub-int/2addr v3, v0

    .line 93894
    .local v1, "atomPayloadSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 93895
    .local v0, "atomData":Lcom/facebook/ads/redexgen/X/4J;
    if-eqz v2, :cond_0

    .line 93896
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0x8

    invoke-interface {p1, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 93897
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/ki;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/ki;-><init>(ILcom/facebook/ads/redexgen/X/4J;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A9H()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0U(Lcom/facebook/ads/redexgen/X/ki;JLandroid/net/Uri;)V

    .line 93898
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/kc;->A0F(J)V

    .line 93899
    return-void

    .line 93900
    :cond_0
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93901
    const/4 v2, 0x0

    .line 93902
    .local v0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/IY;
    const-wide v3, 0x7fffffffffffffffL

    .line 93903
    .local v1, "nextDataOffset":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 93904
    .local v3, "trackBundlesSize":I
    const/4 v7, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 93905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 93906
    .local v5, "trackFragment":Lcom/facebook/ads/redexgen/X/Io;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Io;->A0A:Z

    if-eqz v0, :cond_0

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 93907
    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    .line 93908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/IY;

    .line 93909
    .end local v5    # "trackFragment":Lcom/facebook/ads/redexgen/X/Io;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 93910
    .end local v4    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 93911
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 93912
    return-void

    .line 93913
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 93914
    .local v5, "bytesToSkip":I
    if-ltz v0, :cond_3

    .line 93915
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 93916
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Io;->A05(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 93917
    return-void

    .line 93918
    :cond_3
    const/16 v2, 0x180

    const/16 v1, 0x27

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/kj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93919
    iget v1, p1, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x6d6f6f76

    if-ne v1, v0, :cond_1

    .line 93920
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0P(Lcom/facebook/ads/redexgen/X/kj;)V

    .line 93921
    :cond_0
    :goto_0
    return-void

    .line 93922
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x6d6f6f66

    if-ne v1, v0, :cond_2

    .line 93923
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0O(Lcom/facebook/ads/redexgen/X/kj;)V

    goto :goto_0

    .line 93924
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "pjYwVuiFyV8fJrHeJXv5AlOqs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/kj;

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/kj;->A08(Lcom/facebook/ads/redexgen/X/kj;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/kj;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93926
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A0K:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0Y:[B

    invoke-static {p1, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0Q(Lcom/facebook/ads/redexgen/X/kj;Landroid/util/SparseArray;ZI[B)V

    .line 93927
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A06(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v3

    .line 93928
    .local v0, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    if-eqz v3, :cond_1

    .line 93929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 93930
    .local v1, "trackCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 93931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IY;->A0B(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)V

    .line 93932
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93933
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 93934
    .end local v1    # "trackCount":I
    .end local v2    # "i":I
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0B:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_4

    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "qdUBZHhFhQeTbxiPtlDH0srS7WoJbCtx"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "eg1L367OGrFS41anHFQFHM93YBMqVnGW"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3

    .line 93935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 93936
    .restart local v1    # "trackCount":I
    const/4 v8, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 93937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/IY;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0B:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "ExaTttTG7QLu5ZnLvMbeVx0ab4jt6cU8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/redexgen/X/IY;->A0A(J)V

    .line 93938
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 93939
    .end local v2    # "i":I
    :cond_2
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/kc;->A0B:J

    .line 93940
    .end local v1    # "trackCount":I
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/kj;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93941
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v10, 0x0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x2a8

    const/16 v1, 0x14

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0A(ZLjava/lang/Object;)V

    .line 93942
    move-object/from16 v11, p1

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A06(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v15

    .line 93943
    .local v12, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    const v0, 0x6d766578

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/kj;

    .line 93944
    .local v13, "mvex":Lcom/facebook/ads/redexgen/X/kj;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 93945
    .local v14, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/DefaultSampleValues;>;"
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 93946
    .local v1, "duration":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 93947
    .local v15, "mvexChildrenSize":I
    const/4 v5, 0x0

    .end local v1    # "duration":J
    .local v3, "i":I
    .local v16, "duration":J
    :goto_1
    if-ge v5, v6, :cond_4

    .line 93948
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ki;

    .line 93949
    .local v1, "atom":Lcom/facebook/ads/redexgen/X/ki;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x74726578

    if-ne v1, v0, :cond_1

    .line 93950
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A04(Lcom/facebook/ads/redexgen/X/4J;)Landroid/util/Pair;

    move-result-object v8

    .line 93951
    .local v2, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/DefaultSampleValues;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "1hJqa9Igz9YM2Xn7uSuVVZMPlDpSi7YR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93952
    .end local v2    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/DefaultSampleValues;>;"
    .end local v1    # "atom":Lcom/facebook/ads/redexgen/X/ki;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93953
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x6d656864

    if-ne v1, v0, :cond_0

    .line 93954
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A02(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v13

    .end local v16    # "duration":J
    .local v4, "duration":J
    goto :goto_2

    .line 93955
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93956
    .end local v3    # "i":I
    :cond_4
    new-instance v12, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/Gi;-><init>()V

    iget v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A0K:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/16 v16, 0x1

    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/ke;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/ke;-><init>(Lcom/facebook/ads/redexgen/X/kc;)V

    .line 93957
    const/16 v17, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/IO;->A0O(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/Gi;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZLcom/facebook/ads/redexgen/X/ip;)Ljava/util/List;

    move-result-object v8

    .line 93958
    .local v1, "sampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 93959
    .local v2, "trackCount":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 93960
    const/4 v9, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v9, v7, :cond_8

    .line 93961
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Ip;

    .line 93962
    .local v4, "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    .line 93963
    .local v5, "track":Lcom/facebook/ads/redexgen/X/Im;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    .line 93964
    .local v6, "output":Lcom/facebook/ads/redexgen/X/H1;
    iget v0, v10, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    .line 93965
    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kc;->A07(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v2, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/IY;-><init>(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V

    .line 93966
    .local v7, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93967
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/kc;->A08:J

    .end local v6    # "output":Lcom/facebook/ads/redexgen/X/H1;
    .end local v7    # "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    .local v8, "output":Lcom/facebook/ads/redexgen/X/H1;
    .local v18, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/Im;->A04:J

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A08:J

    .line 93968
    .end local v4    # "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/Im;
    .end local v8    # "output":Lcom/facebook/ads/redexgen/X/H1;
    .end local v18    # "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 93969
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 93970
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v10, 0x1

    :cond_7
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 93971
    const/4 v6, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v6, v7, :cond_9

    .line 93972
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Ip;

    .line 93973
    .restart local v4    # "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    .line 93974
    .restart local v5    # "track":Lcom/facebook/ads/redexgen/X/Im;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    .line 93975
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IY;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    .line 93976
    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kc;->A07(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/IY;->A0C(Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V

    .line 93977
    .end local v4    # "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/Im;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 93978
    .end local v3    # "i":I
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 93979
    .end local v3
    :cond_9
    return-void
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/kj;Landroid/util/SparseArray;ZI[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/kj;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93980
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/FragmentedMp4Extractor2$TrackBundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 93981
    .local v0, "moofContainerChildrenSize":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 93982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/kj;

    .line 93983
    .local v2, "child":Lcom/facebook/ads/redexgen/X/kj;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x74726166

    if-ne v1, v0, :cond_0

    .line 93984
    invoke-static {v2, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/kc;->A0R(Lcom/facebook/ads/redexgen/X/kj;Landroid/util/SparseArray;ZI[B)V

    .line 93985
    .end local v2    # "child":Lcom/facebook/ads/redexgen/X/kj;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93986
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/kj;Landroid/util/SparseArray;ZI[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/kj;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 93987
    .local p11, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/mp4/FragmentedMp4Extractor2$TrackBundle;>;"
    const v0, 0x74666864

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ki;

    .line 93988
    .local v2, "tfhd":Lcom/facebook/ads/redexgen/X/ki;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/kc;->A09(Lcom/facebook/ads/redexgen/X/4J;Landroid/util/SparseArray;Z)Lcom/facebook/ads/redexgen/X/IY;

    move-result-object v4

    .line 93989
    .local v3, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    if-nez v4, :cond_0

    .line 93990
    return-void

    .line 93991
    :cond_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 93992
    .local v6, "fragment":Lcom/facebook/ads/redexgen/X/Io;
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Io;->A05:J

    .line 93993
    .local v7, "fragmentDecodeTime":J
    iget-boolean v5, v3, Lcom/facebook/ads/redexgen/X/Io;->A09:Z

    .line 93994
    .local p1, "fragmentDecodeTimeIncludesMoov":Z
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IY;->A08()V

    .line 93995
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcom/facebook/ads/redexgen/X/IY;->A01(Lcom/facebook/ads/redexgen/X/IY;Z)Z

    .line 93996
    const v0, 0x74666474

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v6

    .line 93997
    .local p3, "tfdtAtom":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v6, :cond_6

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_6

    .line 93998
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A03(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Io;->A05:J

    .line 93999
    iput-boolean v7, v3, Lcom/facebook/ads/redexgen/X/Io;->A09:Z

    .line 94000
    :goto_0
    invoke-static {p0, v4, p3}, Lcom/facebook/ads/redexgen/X/kc;->A0S(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/IY;I)V

    .line 94001
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    .line 94002
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "vW8YzoDO1k8YQphW8Ysx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/IP;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    .line 94003
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Im;->A00(I)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    .line 94004
    .local p2, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    const v0, 0x7361697a

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 94005
    .local p4, "saiz":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v0, :cond_1

    .line 94006
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/kc;->A0V(Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V

    .line 94007
    :cond_1
    const v0, 0x7361696f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 94008
    .local p5, "saio":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v0, :cond_2

    .line 94009
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/kc;->A0I(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V

    .line 94010
    :cond_2
    const v0, 0x73656e63

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 94011
    .local p6, "senc":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v0, :cond_3

    .line 94012
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/kc;->A0J(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V

    .line 94013
    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/In;->A02:Ljava/lang/String;

    :goto_1
    invoke-static {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/kc;->A0T(Lcom/facebook/ads/redexgen/X/kj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Io;)V

    .line 94014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 94015
    .local p7, "leafChildrenSize":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v4, v5, :cond_7

    .line 94016
    .end local v2    # "tfhd":Lcom/facebook/ads/redexgen/X/ki;
    .local p8, "tfhd":Lcom/facebook/ads/redexgen/X/ki;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ki;

    .line 94017
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/ki;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    .end local v3    # "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    .local p9, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    const v0, 0x75756964

    if-ne v1, v0, :cond_4

    .line 94018
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, v3, p4}, Lcom/facebook/ads/redexgen/X/kc;->A0K(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;[B)V

    .line 94019
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/ki;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 94020
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 94021
    :cond_6
    iput-wide v1, v3, Lcom/facebook/ads/redexgen/X/Io;->A05:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .line 94022
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "mrSj0GzHTHwkPK2z0oCyoB4jTU17nK7M"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v5, v3, Lcom/facebook/ads/redexgen/X/Io;->A09:Z

    goto/16 :goto_0

    .line 94023
    .end local v1    # "i":I
    .end local p8
    .end local p9
    .local v2, "tfhd":Lcom/facebook/ads/redexgen/X/ki;
    .restart local v3    # "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/IY;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94024
    const/4 v4, 0x0

    .line 94025
    .local v0, "trunCount":I
    const/4 v3, 0x0

    .line 94026
    .local v1, "totalSampleCount":I
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    .line 94027
    .local v2, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    .line 94028
    .local v3, "leafChildrenSize":I
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_0
    const v6, 0x7472756e

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "g5KWW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v5, v7, :cond_1

    .line 94029
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ki;

    .line 94030
    .local v6, "atom":Lcom/facebook/ads/redexgen/X/ki;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/II;->A00:I

    if-ne v0, v6, :cond_0

    .line 94031
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 94032
    .local v5, "trunData":Lcom/facebook/ads/redexgen/X/4J;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94033
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    .line 94034
    .local v7, "trunSampleCount":I
    if-lez v0, :cond_0

    .line 94035
    add-int/2addr v3, v0

    .line 94036
    add-int/lit8 v4, v4, 0x1

    .line 94037
    .end local v5    # "trunData":Lcom/facebook/ads/redexgen/X/4J;
    .end local v6    # "atom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v7    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94038
    .end local v4    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    .line 94039
    iput v0, p1, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    .line 94040
    iput v0, p1, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    .line 94041
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    invoke-virtual {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Io;->A03(II)V

    .line 94042
    const/4 v5, 0x0

    .line 94043
    .local v4, "trunIndex":I
    const/4 v0, 0x0

    .line 94044
    .local v6, "trunStartPosition":I
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 94045
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/ki;

    .line 94046
    .local p0, "trun":Lcom/facebook/ads/redexgen/X/ki;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/II;->A00:I

    if-ne v1, v6, :cond_2

    .line 94047
    add-int/lit8 v2, v5, 0x1

    .end local v4    # "trunIndex":I
    .local p1, "trunIndex":I
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 94048
    invoke-static {p1, v5, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A01(Lcom/facebook/ads/redexgen/X/IY;IILcom/facebook/ads/redexgen/X/4J;I)I

    move-result v0

    move v5, v2

    .line 94049
    .end local p0    # "trun":Lcom/facebook/ads/redexgen/X/ki;
    .end local p1    # "trunIndex":I
    .restart local v4    # "trunIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94050
    .end local v7    # "i":I
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/kj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Io;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94051
    const/4 v5, 0x0

    .line 94052
    .local v2, "sbgp":Lcom/facebook/ads/redexgen/X/4J;
    const/4 v2, 0x0

    .line 94053
    .local v3, "sgpd":Lcom/facebook/ads/redexgen/X/4J;
    const/4 v8, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 94054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A02:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/ki;

    .line 94055
    .local v5, "leafAtom":Lcom/facebook/ads/redexgen/X/ki;
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 94056
    .local v6, "leafAtomData":Lcom/facebook/ads/redexgen/X/4J;
    iget v1, v7, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x73626770

    const v4, 0x73656967

    const/16 v3, 0xc

    if-ne v1, v0, :cond_1

    .line 94057
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94058
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 94059
    move-object v5, v6

    .line 94060
    .end local v5    # "leafAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v6    # "leafAtomData":Lcom/facebook/ads/redexgen/X/4J;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94061
    :cond_1
    iget v1, v7, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x73677064

    if-ne v1, v0, :cond_0

    .line 94062
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94063
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 94064
    move-object v2, v6

    goto :goto_1

    .line 94065
    .end local v4    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    if-nez v2, :cond_4

    .line 94066
    .end local v5
    :cond_3
    return-void

    .line 94067
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94068
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v0

    .line 94069
    .local v5, "sbgpVersion":I
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 94070
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 94071
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 94072
    :cond_5
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 94073
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94074
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v1

    .line 94075
    .local v4, "sgpdVersion":I
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 94076
    if-ne v1, v3, :cond_8

    .line 94077
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_c

    .line 94078
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v6

    const-wide/16 v4, 0x1

    cmp-long v0, v6, v4

    if-nez v0, :cond_b

    .line 94079
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 94080
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 94081
    .local v8, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v8, v0, 0x4

    .line 94082
    .local v6, "cryptByteBlock":I
    and-int/lit8 v9, v1, 0xf

    .line 94083
    .local v9, "skipByteBlock":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_7

    const/4 v4, 0x1

    .line 94084
    .local p8, "isProtected":Z
    :goto_3
    if-nez v4, :cond_9

    .line 94085
    return-void

    .line 94086
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 94087
    :cond_8
    const/4 v0, 0x2

    if-lt v1, v0, :cond_6

    .line 94088
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    goto :goto_2

    .line 94089
    :cond_9
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v6

    .line 94090
    .local p9, "perSampleIvSize":I
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 94091
    .local p5, "keyId":[B
    array-length v0, v7

    invoke-virtual {v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 94092
    const/4 p0, 0x0

    .line 94093
    .local p0, "constantIv":[B
    if-nez v6, :cond_a

    .line 94094
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 94095
    .local p2, "constantIvSize":I
    new-array p0, v0, [B

    .line 94096
    invoke-virtual {v2, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 94097
    .end local p0    # "constantIv":[B
    .local p10, "constantIv":[B
    :cond_a
    move-object v0, p2

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Io;->A08:Z

    .line 94098
    new-instance v3, Lcom/facebook/ads/redexgen/X/In;

    .end local p5
    .local p11, "keyId":[B
    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/In;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Io;->A07:Lcom/facebook/ads/redexgen/X/In;

    .line 94099
    return-void

    .line 94100
    .end local v6    # "cryptByteBlock":I
    .end local v8    # "patternByte":I
    .end local v9    # "skipByteBlock":I
    .end local p8
    .end local p9
    .end local p10
    .end local p11
    :cond_b
    const/16 v2, 0xa5

    const/16 v1, 0x27

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94101
    :cond_c
    const/16 v2, 0x310

    const/16 v1, 0x37

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94102
    .end local v4    # "sgpdVersion":I
    :cond_d
    const/16 v2, 0x7e

    const/16 v1, 0x27

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/ki;JLandroid/net/Uri;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding Uri for eMsg"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/kj;->A09(Lcom/facebook/ads/redexgen/X/ki;)V

    .line 94105
    :cond_0
    :goto_0
    return-void

    .line 94106
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x73696478

    if-ne v1, v0, :cond_2

    .line 94107
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/kc;->A05(Lcom/facebook/ads/redexgen/X/4J;J)Landroid/util/Pair;

    move-result-object v4

    .line 94108
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/androidx/media3/extractor/ChunkIndex;>;"
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "KqHjYmkkmLRftUSzBx7x8q1P7pbSwwaZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0C:J

    .line 94109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 94110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0G:Z

    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/androidx/media3/extractor/ChunkIndex;>;"
    goto :goto_0

    .line 94111
    :cond_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x656d7367

    if-ne v1, v0, :cond_0

    .line 94112
    if-eqz p4, :cond_0

    .line 94113
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/kc;->A0H(Lcom/facebook/ads/redexgen/X/4J;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0V(Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Io;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 94114
    iget p0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:I

    .line 94115
    .local v0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94116
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 94117
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A00(I)I

    move-result v0

    .line 94118
    .local v3, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 94119
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 94120
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 94121
    .local v1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v4

    .line 94122
    .local v4, "sampleCount":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    if-gt v4, v0, :cond_7

    .line 94123
    const/4 v5, 0x0

    .line 94124
    .local v6, "totalSize":I
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 94125
    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/Io;->A0F:[Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    .line 94126
    .local p1, "sampleHasSubsampleEncryptionTable":[Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "ACu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 94127
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 94128
    .local p3, "sampleInfoSize":I
    add-int/2addr v5, v1

    .line 94129
    if-le v1, p0, :cond_1

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v6, v0

    .line 94130
    .end local p3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94131
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94132
    :cond_3
    if-le v1, p0, :cond_6

    .line 94133
    .local v5, "subsampleEncryption":Z
    :goto_2
    mul-int/2addr v1, v4

    add-int/2addr v5, v1

    .line 94134
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A0F:[Z

    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 94135
    .end local v5    # "subsampleEncryption":Z
    :cond_4
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Io;->A0F:[Z

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    invoke-static {v1, v4, v0, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 94136
    if-lez v5, :cond_5

    .line 94137
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/Io;->A02(I)V

    .line 94138
    :cond_5
    return-void

    .line 94139
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 94140
    .end local v6    # "totalSize":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x202

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x28

    const/16 v1, 0x26

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0W(I)Z
    .locals 1

    .line 94141
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_0

    const v0, 0x7472616b

    if-eq p0, v0, :cond_0

    const v0, 0x6d646961

    if-eq p0, v0, :cond_0

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_0

    const v0, 0x7374626c

    if-eq p0, v0, :cond_0

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_0

    const v0, 0x74726166

    if-eq p0, v0, :cond_0

    const v0, 0x6d766578

    if-eq p0, v0, :cond_0

    const v0, 0x65647473

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0X(I)Z
    .locals 4

    .line 94142
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_0

    const v0, 0x6d646864

    if-eq p0, v0, :cond_0

    const v0, 0x6d766864

    if-eq p0, v0, :cond_0

    const v0, 0x73696478

    if-eq p0, v0, :cond_0

    const v0, 0x73747364

    if-eq p0, v0, :cond_0

    const v0, 0x73747473

    if-eq p0, v0, :cond_0

    const v0, 0x63747473

    if-eq p0, v0, :cond_0

    const v0, 0x73747363

    if-eq p0, v0, :cond_0

    const v3, 0x7374737a

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "BwdOpTtZC6qkHbBW6vzemIV3sewTUKel"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "oE5SsWuxWmjvJDoIWd7OBauEjDNEKBY0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    const v3, 0x73747a32

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "alBOnYvVhDOHTU7zpsfhYzjhJlh1j5qj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    :goto_0
    const v0, 0x7374636f

    if-eq p0, v0, :cond_0

    const v0, 0x636f3634

    if-eq p0, v0, :cond_0

    const v0, 0x73747373

    if-eq p0, v0, :cond_0

    const v0, 0x74666474

    if-eq p0, v0, :cond_0

    const v0, 0x74666864

    if-eq p0, v0, :cond_0

    const v0, 0x746b6864

    if-eq p0, v0, :cond_0

    const v0, 0x74726578

    if-eq p0, v0, :cond_0

    const v0, 0x7472756e

    if-eq p0, v0, :cond_0

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_0

    const v0, 0x7361697a

    if-eq p0, v0, :cond_0

    const v0, 0x7361696f

    if-eq p0, v0, :cond_0

    const v0, 0x73656e63

    if-eq p0, v0, :cond_0

    const v0, 0x75756964

    if-eq p0, v0, :cond_0

    const v0, 0x73626770

    if-eq p0, v0, :cond_0

    const v0, 0x73677064

    if-eq p0, v0, :cond_0

    const v0, 0x656c7374

    if-eq p0, v0, :cond_0

    const v0, 0x6d656864

    if-eq p0, v0, :cond_0

    const v0, 0x656d7367

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "AuC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94143
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 94144
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "Du9yMjOrUhZNFJE5GgCY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v5, v6, v4}, Lcom/facebook/ads/redexgen/X/lN;->AGh([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94145
    return v5

    .line 94146
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    .line 94147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    .line 94149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "Nk2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    .line 94150
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_6

    .line 94151
    const/16 v1, 0x8

    .line 94152
    .local v0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94153
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    .line 94154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    .line 94155
    .end local v0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_10

    .line 94156
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 94157
    .local v4, "atomPosition":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    const v8, 0x6d646174

    const v10, 0x6d6f6f66

    if-eq v0, v10, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    if-ne v0, v8, :cond_4

    .line 94158
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0G:Z

    if-nez v0, :cond_4

    .line 94159
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A08:J

    new-instance v7, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/lI;-><init>(JJ)V

    invoke-interface {v9, v7}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 94160
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/kc;->A0G:Z

    .line 94161
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    if-ne v0, v10, :cond_8

    .line 94162
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    sget-object v7, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "3NdiubR5fLBwA18U1YAUjfhOdAcmjZCx"

    const/4 v0, 0x7

    aput-object v1, v7, v0

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 94163
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v1, v0, :cond_8

    .line 94164
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/IY;

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 94165
    .local v8, "fragment":Lcom/facebook/ads/redexgen/X/Io;
    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/Io;->A02:J

    .line 94166
    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/Io;->A03:J

    .line 94167
    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/Io;->A04:J

    .line 94168
    .end local v8    # "fragment":Lcom/facebook/ads/redexgen/X/Io;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "3Yh"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "trackCount":I
    const/4 v1, 0x0

    goto :goto_1

    .line 94169
    :cond_6
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 94170
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    .line 94171
    .local v4, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 94172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/kj;->A00:J

    .line 94173
    :cond_7
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 94174
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    goto/16 :goto_0

    .line 94175
    .end local v0    # "trackCount":I
    .end local v7    # "i":I
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    const/4 v9, 0x0

    if-ne v0, v8, :cond_9

    .line 94176
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    .line 94177
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A09:J

    .line 94178
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 94179
    return v4

    .line 94180
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A0W(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94181
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    add-long/2addr v5, v0

    const-wide/16 v0, 0x8

    sub-long/2addr v5, v0

    .line 94182
    .local v0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/kj;

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/kj;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 94183
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    int-to-long v1, v0

    cmp-long v0, v7, v1

    if-nez v0, :cond_a

    .line 94184
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/kc;->A0F(J)V

    .line 94185
    :goto_2
    return v4

    .line 94186
    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kc;->A0B()V

    goto :goto_2

    .line 94187
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kc;->A0X(I)Z

    move-result v0

    const-wide/32 v7, 0x7fffffff

    if-eqz v0, :cond_c

    .line 94188
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A00:I

    if-ne v0, v6, :cond_e

    .line 94189
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_d

    .line 94190
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    long-to-int v0, v1

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 94191
    .local v0, "atomData":Lcom/facebook/ads/redexgen/X/4J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94192
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kc;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 94193
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 94194
    .end local v0    # "atomData":Lcom/facebook/ads/redexgen/X/4J;
    goto :goto_2

    .line 94195
    :cond_c
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kc;->A07:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_f

    .line 94196
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/kc;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 94197
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    goto :goto_2

    .line 94198
    :cond_d
    const/16 v2, 0x14f

    const/16 v1, 0x31

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94199
    :cond_e
    const/16 v2, 0x11c

    const/16 v1, 0x33

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94200
    :cond_f
    const/16 v2, 0x250

    const/16 v1, 0x35

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94201
    .end local v4    # "endPosition":J
    :cond_10
    const/16 v2, 0x4e

    const/16 v1, 0x30

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 18
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Mark text samples as sync frames"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94202
    move-object/from16 v3, p0

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    .line 94203
    .local v2, "trackBundle":Lcom/facebook/ads/redexgen/X/IY;
    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p1

    if-nez v7, :cond_5

    .line 94204
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "dJt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/kc;->A08(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/IY;

    move-result-object v7

    .line 94205
    if-nez v7, :cond_3

    .line 94206
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A09:J

    invoke-interface {v11}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    sub-long/2addr v4, v0

    long-to-int v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_2

    .line 94207
    .local v6, "bytesToSkip":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "OgjcUdmzkFJtvCkNjJUwSL6BC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ltz v3, :cond_10

    .line 94208
    :goto_0
    invoke-interface {v11, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94209
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/kc;->A0B()V

    .line 94210
    return v10

    .line 94211
    .local v6, "bytesToSkip":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "drajDSJT48ogOqJP7e4ZIkjylQBmqc38"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "jG2fRwUYgKH0Z3F7iVLG52YSPeKVDlpp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ltz v3, :cond_10

    goto :goto_0

    .line 94212
    .end local v6    # "bytesToSkip":I
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A05()J

    move-result-wide v0

    .line 94213
    .local v5, "nextDataPosition":J
    invoke-interface {v11}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v2, v0

    .line 94214
    .local v8, "bytesToSkip":I
    if-gez v2, :cond_4

    .line 94215
    const/16 v2, 0xcc

    const/16 v1, 0x16

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xe2

    const/16 v1, 0x28

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 94216
    const/4 v2, 0x0

    .line 94217
    :cond_4
    invoke-interface {v11, v2}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94218
    iput-object v7, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    .line 94219
    .end local v5    # "nextDataPosition":J
    .end local v8    # "bytesToSkip":I
    :cond_5
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    const/4 v2, 0x3

    const/4 v12, 0x4

    const/4 v14, 0x1

    if-ne v0, v2, :cond_9

    .line 94220
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A03()I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94221
    iget v1, v7, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/IY;->A03:I

    if-ge v1, v0, :cond_7

    .line 94222
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    invoke-interface {v11, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94223
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A09()V

    .line 94224
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A0D()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94225
    iput-object v13, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    .line 94226
    :cond_6
    iput v2, v3, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 94227
    return v14

    .line 94228
    :cond_7
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A02:I

    if-ne v0, v14, :cond_8

    .line 94229
    iget v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    const/16 v0, 0x8

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94230
    invoke-interface {v11, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94231
    :cond_8
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    const/16 v2, 0x36e

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 94232
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94233
    const/4 v2, 0x7

    invoke-virtual {v7, v0, v2}, Lcom/facebook/ads/redexgen/X/IY;->A04(II)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    .line 94234
    iget v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0Q:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GI;->A07(ILcom/facebook/ads/redexgen/X/4J;)V

    .line 94235
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0Q:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94236
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    .line 94237
    :goto_1
    iget v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    add-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94238
    iput v12, v3, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 94239
    iput v10, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    .line 94240
    :cond_9
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    .line 94241
    .local v5, "track":Lcom/facebook/ads/redexgen/X/Im;
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "UjEa6ysv1gVuBQ9NSSQbVZdjDRxN5dgX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 94242
    .local v15, "output":Lcom/facebook/ads/redexgen/X/H1;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A06()J

    move-result-wide v1

    .line 94243
    .local v9, "sampleTimeUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    if-eqz v0, :cond_a

    .line 94244
    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/kc;->A0R:Lcom/facebook/ads/redexgen/X/4R;

    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v4, v4, v0

    const/16 v0, 0x1c

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x4e

    if-eq v4, v0, :cond_e

    sget-object v5, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v4, "ZxJoJWsimIFBA6WXS2a50b6K01MwI4cU"

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-virtual {v8, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;->A05(J)J

    move-result-wide v1

    .line 94245
    .end local v9    # "sampleTimeUs":J
    .local v13, "sampleTimeUs":J
    :cond_a
    :goto_2
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    if-eqz v0, :cond_13

    .line 94246
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0O:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v8

    .line 94247
    .local v9, "nalPrefixData":[B
    aput-byte v10, v8, v10

    .line 94248
    aput-byte v10, v8, v14

    .line 94249
    const/4 v0, 0x2

    aput-byte v10, v8, v0

    .line 94250
    iget v5, v9, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    add-int/2addr v5, v14

    .line 94251
    .local v10, "nalUnitPrefixLength":I
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    rsub-int/lit8 v4, v0, 0x4

    .line 94252
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_3
    iget v15, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    if-ge v15, v0, :cond_14

    .line 94253
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    if-nez v0, :cond_c

    .line 94254
    invoke-interface {v11, v8, v4, v5}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94255
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0O:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94256
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0O:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 94257
    .local v6, "nalLengthInt":I
    if-lt v0, v14, :cond_12

    .line 94258
    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    .line 94259
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0P:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94260
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0P:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v6, v0, v12}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94261
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0O:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v6, v0, v14}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    sget-object v14, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v0, 0x1e

    if-eq v14, v0, :cond_11

    .line 94262
    sget-object v15, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v14, "3HbOupLLxbWrXLbfJiyKVwL3oOoB4yeP"

    const/4 v0, 0x7

    aput-object v14, v15, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    aget-byte v0, v8, v12

    .line 94263
    invoke-static {v14, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0I(Ljava/lang/String;B)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0H:Z

    .line 94264
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    .line 94265
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    add-int/2addr v0, v4

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94266
    .end local v6    # "nalLengthInt":I
    const/4 v14, 0x1

    goto :goto_3

    .line 94267
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 94268
    .end local v6
    :cond_c
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0H:Z

    if-eqz v0, :cond_d

    .line 94269
    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 94270
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v12

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    invoke-interface {v11, v12, v10, v0}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 94271
    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    invoke-interface {v6, v12, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 94272
    iget v12, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    .line 94273
    .local v6, "writtenBytes":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    .line 94274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v13

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v16

    .line 94275
    .local v8, "unescapedLength":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    const/16 v15, 0x377

    const/16 v13, 0xa

    const/16 v0, 0x74

    invoke-static {v15, v13, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94276
    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 94277
    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/kc;->A0N:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0I:[Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v1, v2, v13, v0}, Lcom/facebook/ads/redexgen/X/GR;->A03(JLcom/facebook/ads/redexgen/X/4J;[Lcom/facebook/ads/redexgen/X/H1;)V

    .line 94278
    .end local v8    # "unescapedLength":I
    .restart local v6    # "writtenBytes":I
    :goto_5
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    add-int/2addr v0, v12

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    .line 94279
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    sub-int/2addr v0, v12

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    .line 94280
    .end local v6    # "writtenBytes":I
    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v14, 0x1

    goto/16 :goto_3

    .line 94281
    .end local v6
    :cond_d
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A05:I

    invoke-interface {v6, v11, v0, v10}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v12

    goto :goto_5

    :cond_e
    invoke-virtual {v8, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;->A05(J)J

    move-result-wide v1

    goto/16 :goto_2

    .line 94282
    :cond_f
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    .line 94283
    invoke-virtual {v7, v0, v10}, Lcom/facebook/ads/redexgen/X/IY;->A04(II)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    goto/16 :goto_1

    .line 94284
    :cond_10
    const/16 v2, 0x1a7

    const/16 v1, 0x23

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94285
    .restart local v6    # "writtenBytes":I
    :cond_12
    const/16 v2, 0x10a

    const/16 v1, 0x12

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 94286
    :cond_13
    :goto_6
    iget v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    if-ge v4, v0, :cond_14

    .line 94287
    iget v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    sub-int/2addr v4, v0

    invoke-interface {v6, v11, v4, v10}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v4

    .line 94288
    .local v3, "writtenBytes":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    add-int/2addr v0, v4

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A04:I

    .line 94289
    .end local v3    # "writtenBytes":I
    goto :goto_6

    .line 94290
    :cond_14
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A02()I

    move-result v11

    .line 94291
    .local v3, "sampleFlags":I
    const/4 v8, 0x0

    .line 94292
    .local v4, "cryptoData":Lcom/facebook/ads/redexgen/X/Gz;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A07()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v0

    .line 94293
    .local v6, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-eqz v0, :cond_15

    .line 94294
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/Gz;

    .line 94295
    :cond_15
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1M:Lcom/facebook/ads/redexgen/X/i2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 94296
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    if-eqz v0, :cond_16

    .line 94297
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    .line 94298
    .local v7, "moovSampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    const/16 v5, 0x359

    const/16 v4, 0x15

    const/16 v0, 0x73

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/kc;->A0A(III)Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v4, v4, v0

    const/16 v0, 0x1c

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x4e

    if-eq v4, v0, :cond_19

    sget-object v5, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v4, "aQkaLsEF9G127UYNPtKAhcOp5GPMu7GC"

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 94299
    :goto_7
    or-int/lit8 v11, v11, 0x1

    .line 94300
    .end local v7    # "moovSampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    :cond_16
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A06:I

    const/4 v13, 0x0

    move-wide v4, v1

    .end local v6    # "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    .end local v13    # "sampleTimeUs":J
    .local v5, "sampleTimeUs":J
    .local v16, "track":Lcom/facebook/ads/redexgen/X/Im;
    .local v17, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    .end local v15    # "output":Lcom/facebook/ads/redexgen/X/H1;
    .local v7, "output":Lcom/facebook/ads/redexgen/X/H1;
    move-wide v9, v1

    move v12, v0

    move-object v14, v8

    move-object v8, v6

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 94301
    iput-wide v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A0A:J

    .line 94302
    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/redexgen/X/kc;->A0E(J)V

    .line 94303
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IY;->A0D()Z

    move-result v0

    if-nez v0, :cond_17

    .line 94304
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "Oznva4TpQIm3xwCXLn5zZ8MtjPilTYJm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    .line 94305
    :cond_17
    :goto_8
    const/4 v0, 0x3

    iput v0, v3, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    .line 94306
    const/4 v0, 0x1

    return v0

    :cond_18
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "tQydpv41IRe8SJWpvpJnsmPT1e9HbOAv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ocIdfF7b9GnVk3ZHQkLuHXJpp6hE4I0I"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/kc;->A0F:Lcom/facebook/ads/redexgen/X/IY;

    goto :goto_8

    :cond_19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_7
.end method

.method public static A0a(Lcom/facebook/ads/redexgen/X/Im;)Z
    .locals 13

    .line 94307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v0, v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    if-nez v0, :cond_1

    .line 94308
    .end local v3
    :cond_0
    return v6

    .line 94309
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    aget-wide v3, v0, v6

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 94310
    return v5

    .line 94311
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    aget-wide v7, v0, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    aget-wide v0, v0, v6

    add-long/2addr v7, v0

    iget-wide v11, p0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 94312
    const-wide/32 v9, 0xf4240

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_4

    .line 94313
    .local v3, "editListEndMediaTimeUs":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/kc;->A0a:[Ljava/lang/String;

    const-string v1, "wHdUW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Im;->A04:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0b()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 94314
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/kb;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kb;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final A0c(Lcom/facebook/ads/redexgen/X/Im;)Lcom/facebook/ads/redexgen/X/Im;
    .locals 0

    .line 94315
    return-object p1
.end method

.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 13

    .line 94316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    .line 94317
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kc;->A0B()V

    .line 94318
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kc;->A0C()V

    .line 94319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    if-eqz v0, :cond_0

    .line 94320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    .line 94321
    const/4 v3, 0x0

    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v2

    new-instance v4, Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kc;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    new-array v6, v3, [J

    new-array v7, v3, [I

    new-array v9, v3, [J

    new-array v10, v3, [I

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/IP;-><init>(IIII)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v1, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/IY;-><init>(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V

    .line 94322
    .local v0, "bundle":Lcom/facebook/ads/redexgen/X/IY;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 94324
    .end local v0    # "bundle":Lcom/facebook/ads/redexgen/X/IY;
    :cond_0
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94325
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A02:I

    packed-switch v0, :pswitch_data_0

    .line 94326
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0Z(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94327
    const/4 v0, 0x0

    return v0

    .line 94328
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0M(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 94329
    goto :goto_0

    .line 94330
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0L(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 94331
    goto :goto_0

    .line 94332
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kc;->A0Y(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94333
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AGr()V
    .locals 0

    .line 94334
    return-void
.end method

.method public final AIM(JJ)V
    .locals 3

    .line 94335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 94336
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 94337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0L:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A08()V

    .line 94338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94339
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0W:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 94340
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A03:I

    .line 94341
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/kc;->A0B:J

    .line 94342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kc;->A0V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 94343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kc;->A0B()V

    .line 94344
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94345
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ik;->A01(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    return v0
.end method
