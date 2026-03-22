.class public final Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GT;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/GT;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/GT;

.field public static final A0H:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList with List"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;"
        }
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3110
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XjRCK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YKKzt2Kz2K7V0l18n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uXpf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oBPf3SXxcwKIIjUAiSrSO2O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bGsaI0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ItuqzfwzHHPicVJR9bxtDiYARBCa2uxZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TYxjAZ909gRPDezWj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NTeqQWiGfYp1zE0qSPlL6iBK546ff9Um"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A05()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    .line 3111
    new-instance v1, Lcom/facebook/ads/redexgen/X/lR;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lR;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GT;-><init>(Lcom/facebook/ads/redexgen/X/GS;)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0F:Lcom/facebook/ads/redexgen/X/GT;

    .line 3112
    new-instance v1, Lcom/facebook/ads/redexgen/X/lQ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lQ;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GT;-><init>(Lcom/facebook/ads/redexgen/X/GS;)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0G:Lcom/facebook/ads/redexgen/X/GT;

    return-void

    nop

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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
    .end annotation

    .line 96563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96564
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A08:I

    .line 96565
    const v0, 0x1b8a0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A09:I

    .line 96566
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0A:Ljava/util/List;

    .line 96567
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 96568
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96569
    const/16 v2, 0x7c

    const/16 v1, 0x3f

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 96570
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v3, [Ljava/lang/Object;

    .line 96571
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96572
    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96573
    .local v0, "isFlacNativeLibraryAvailable":Z
    if-eqz v0, :cond_0

    .line 96574
    const/16 v2, 0x3b

    const/16 v1, 0x41

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/GX;

    .line 96575
    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v3

    .line 96576
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 96577
    return-object v0

    .line 96578
    :cond_0
    return-object v1
.end method

.method public static A02()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 96579
    const/4 v2, 0x0

    const/16 v1, 0x3b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/GX;

    .line 96580
    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 96581
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 96582
    return-object v0
.end method

.method public static synthetic A03()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A01()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A04()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xc6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x56t
        0x54t
        0x15t
        0x4dt
        0x48t
        0x4at
        0x4ct
        0x49t
        0x56t
        0x56t
        0x52t
        0x15t
        0x48t
        0x4bt
        0x5at
        0x15t
        0x48t
        0x55t
        0x4bt
        0x59t
        0x56t
        0x50t
        0x4bt
        0x5ft
        0x15t
        0x54t
        0x4ct
        0x4bt
        0x50t
        0x48t
        0x1at
        0x15t
        0x4bt
        0x4ct
        0x4at
        0x56t
        0x4bt
        0x4ct
        0x59t
        0x15t
        0x54t
        0x50t
        0x4bt
        0x50t
        0x15t
        0x34t
        0x50t
        0x4bt
        0x50t
        0x2ct
        0x5ft
        0x5bt
        0x59t
        0x48t
        0x4at
        0x5bt
        0x56t
        0x59t
        -0x6t
        0x6t
        0x4t
        -0x3bt
        -0x3t
        -0x8t
        -0x6t
        -0x4t
        -0x7t
        0x6t
        0x6t
        0x2t
        -0x3bt
        -0x8t
        -0x5t
        0xat
        -0x3bt
        -0x2t
        0x6t
        0x6t
        -0x2t
        0x3t
        -0x4t
        -0x3bt
        -0x8t
        0x5t
        -0x5t
        0x9t
        0x6t
        0x0t
        -0x5t
        -0x3bt
        -0x4t
        0xft
        0x6t
        0x7t
        0x3t
        -0x8t
        0x10t
        -0x4t
        0x9t
        -0x37t
        -0x3bt
        -0x4t
        0xft
        0xbt
        -0x3bt
        -0x3t
        0x3t
        -0x8t
        -0x6t
        -0x3bt
        -0x23t
        0x3t
        -0x8t
        -0x6t
        -0x24t
        0xft
        0xbt
        0x9t
        -0x8t
        -0x6t
        0xbt
        0x6t
        0x9t
        0x1bt
        0x27t
        0x25t
        -0x1at
        0x1et
        0x19t
        0x1bt
        0x1dt
        0x1at
        0x27t
        0x27t
        0x23t
        -0x1at
        0x19t
        0x1ct
        0x2bt
        -0x1at
        0x1ft
        0x27t
        0x27t
        0x1ft
        0x24t
        0x1dt
        -0x1at
        0x19t
        0x26t
        0x1ct
        0x2at
        0x27t
        0x21t
        0x1ct
        -0x1at
        0x1dt
        0x30t
        0x27t
        0x28t
        0x24t
        0x19t
        0x31t
        0x1dt
        0x2at
        -0x16t
        -0x1at
        0x1dt
        0x30t
        0x2ct
        -0x1at
        0x1et
        0x24t
        0x19t
        0x1bt
        -0x1at
        -0x2t
        0x24t
        0x19t
        0x1bt
        0x4t
        0x21t
        0x1at
        0x2at
        0x19t
        0x2at
        0x31t
        0x52t
        0x5ct
        0x2at
        0x5ft
        0x4at
        0x52t
        0x55t
        0x4at
        0x4bt
        0x55t
        0x4et
    .end array-data
.end method

.method private A06(ILjava/util/List;)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Removed AVI and JPEG extractors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;)V"
        }
    .end annotation

    .line 96583
    .local p2, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 96584
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 96585
    :pswitch_1
    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0G:Lcom/facebook/ads/redexgen/X/GT;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GT;->A03([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v0

    .line 96586
    .local v0, "midiExtractor":Lcom/facebook/ads/redexgen/X/GX;
    if-eqz v0, :cond_0

    .line 96587
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96588
    .end local v0    # "midiExtractor":Lcom/facebook/ads/redexgen/X/GX;
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/jT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jT;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96589
    goto :goto_0

    .line 96590
    :pswitch_3
    iget v4, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A08:I

    const-wide/16 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0A:Ljava/util/List;

    new-instance v2, Lcom/facebook/ads/redexgen/X/jt;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jt;-><init>(ILjava/util/List;)V

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A09:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/jX;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/jX;-><init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Kc;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96591
    goto :goto_0

    .line 96592
    :pswitch_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/je;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/je;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96593
    goto :goto_0

    .line 96594
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/kR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kR;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96595
    goto :goto_0

    .line 96596
    :pswitch_6
    new-instance v1, Lcom/facebook/ads/redexgen/X/kX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kX;-><init>()V

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/kX;->A01(I)Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96597
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/kY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kY;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96598
    goto :goto_0

    .line 96599
    :pswitch_7
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A05:I

    .line 96600
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_2

    .line 96601
    :goto_1
    or-int/2addr v4, v1

    .line 96602
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    if-eqz v0, :cond_1

    .line 96603
    :goto_2
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/kl;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/kl;-><init>(I)V

    .line 96604
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96605
    goto :goto_0

    .line 96606
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 96607
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 96608
    :pswitch_8
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A04:I

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96609
    goto/16 :goto_0

    .line 96610
    :pswitch_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/l8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/l8;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96611
    goto/16 :goto_0

    .line 96612
    :pswitch_a
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0F:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/GT;->A03([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v0

    .line 96613
    .local v0, "flacExtractor":Lcom/facebook/ads/redexgen/X/GX;
    if-eqz v0, :cond_3

    .line 96614
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96615
    :cond_3
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lB;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96616
    goto/16 :goto_0

    .line 96617
    .end local v0    # "flacExtractor":Lcom/facebook/ads/redexgen/X/GX;
    :pswitch_b
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A01:I

    .line 96618
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_5

    .line 96619
    :goto_3
    or-int/2addr v4, v1

    .line 96620
    iget-boolean v5, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const-string v1, "88SSgZrekVuE3ZpEu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "yFmqseBd895DxKzOE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 96621
    :goto_4
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/lG;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/lG;-><init>(I)V

    .line 96622
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96623
    goto/16 :goto_0

    .line 96624
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 96625
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 96626
    :pswitch_c
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00:I

    .line 96627
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_7

    .line 96628
    :goto_5
    or-int/2addr v4, v1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .line 96629
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const-string v1, "0JYW4ys9S4cBRo9bfKNpoispKPkvAlfn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ESM27VzyBHwJIaBfhIrCniRSUGwbmbgc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    if-eqz v0, :cond_6

    .line 96630
    :goto_6
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/jv;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/jv;-><init>(I)V

    .line 96631
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96632
    goto/16 :goto_0

    .line 96633
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 96634
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 96635
    :pswitch_d
    new-instance v0, Lcom/facebook/ads/redexgen/X/jy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jy;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96636
    goto/16 :goto_0

    .line 96637
    :pswitch_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/k1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/k1;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96638
    goto/16 :goto_0

    .line 96639
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized A5F()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 2

    monitor-enter p0

    .line 96640
    :try_start_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A5G(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5G(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/GX;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/facebook/ads/redexgen/X/GX;"
        }
    .end annotation

    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 96641
    :try_start_0
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    array-length v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96642
    .local v0, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/28;->A02(Ljava/util/Map;)I

    move-result v6

    .line 96643
    .local v1, "responseHeadersInferredFileType":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    .line 96644
    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 96645
    .end local p0    # "this":Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/28;->A00(Landroid/net/Uri;)I

    move-result v5

    .line 96646
    .local v3, "uriInferredFileType":I
    if-eq v5, v1, :cond_1

    if-eq v5, v6, :cond_1

    .line 96647
    invoke-direct {p0, v5, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 96648
    :cond_1
    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget v1, v4, v2

    .line 96649
    .local v6, "fileType":I
    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    .line 96650
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 96651
    .end local v6    # "fileType":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96652
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/GX;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96653
    .end local v0    # "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    .end local v1    # "responseHeadersInferredFileType":I
    .end local v3    # "uriInferredFileType":I
    .end local p1    # null:Landroid/net/Uri;
    .end local p2    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
