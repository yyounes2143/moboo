.class public final Lcom/facebook/ads/redexgen/X/nO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FQ;
.implements Lcom/facebook/ads/redexgen/X/Fp;
.implements Lcom/facebook/ads/redexgen/X/70;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/FQ;

.field public A01:Lcom/facebook/ads/redexgen/X/FQ;

.field public A02:Lcom/facebook/ads/redexgen/X/Fp;

.field public A03:Lcom/facebook/ads/redexgen/X/Fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3180
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s2pX1dUuV9yMGkOQMpNHWy9uhNawnk9Y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g94kU4b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NzGTwCFJguijRpsE4vnu2khyHl2vzHxI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mcwg2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3H7kdFWigyqN00XNlLPoaD6s2Om"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "arwBjFb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zwCIEju4cqvLZ8D4reT2LOc82uEYQHt6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4voNbHG588W1rePZ0VIdJriIAfqG9T"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nO;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nO;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/60;)V
    .locals 0

    .line 100452
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nO;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nO;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nO;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x0t
        0x11t
        0x33t
        0xct
        0x1t
        0x0t
        0xat
        0x23t
        0x17t
        0x4t
        0x8t
        0x0t
        0x28t
        0x0t
        0x11t
        0x4t
        0x1t
        0x4t
        0x11t
        0x4t
        0x29t
        0xct
        0x16t
        0x11t
        0x0t
        0xbt
        0x0t
        0x17t
    .end array-data
.end method


# virtual methods
.method public final A9a(ILjava/lang/Object;)V
    .locals 3

    .line 100453
    sparse-switch p1, :sswitch_data_0

    .line 100454
    :goto_0
    return-void

    .line 100455
    :sswitch_0
    const/4 v0, 0x0

    .line 100456
    .local v0, "surfaceView":Lcom/facebook/ads/redexgen/X/G4;
    if-nez v0, :cond_0

    .line 100457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nO;->A00:Lcom/facebook/ads/redexgen/X/FQ;

    .line 100458
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nO;->A03:Lcom/facebook/ads/redexgen/X/Fp;

    goto :goto_0

    .line 100459
    .end local v0    # "surfaceView":Lcom/facebook/ads/redexgen/X/G4;
    :sswitch_1
    check-cast p2, Lcom/facebook/ads/redexgen/X/Fp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nO;->A02:Lcom/facebook/ads/redexgen/X/Fp;

    .line 100460
    goto :goto_0

    .line 100461
    :sswitch_2
    check-cast p2, Lcom/facebook/ads/redexgen/X/FQ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nO;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    .line 100462
    goto :goto_0

    .line 100463
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nO;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method

.method public final AFi(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V
    .locals 17

    .line 100464
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/nO;->A00:Lcom/facebook/ads/redexgen/X/FQ;

    move-object/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    move-wide/from16 v4, p1

    if-eqz v0, :cond_1

    .line 100465
    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/nO;->A00:Lcom/facebook/ads/redexgen/X/FQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/nO;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nO;->A05:[Ljava/lang/String;

    const-string v1, "rCzQpO90p93bI0FQ7tWj9IORt31"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    move-wide v11, v4

    move-wide v13, v6

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-interface/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/FQ;->AFi(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 100466
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/nO;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    if-eqz v0, :cond_2

    .line 100467
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/nO;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/FQ;->AFi(JJLcom/facebook/ads/redexgen/X/or;Landroid/media/MediaFormat;)V

    .line 100468
    :cond_2
    return-void
.end method
