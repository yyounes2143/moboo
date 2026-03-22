.class public final Lcom/facebook/ads/redexgen/X/jX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/jZ;,
        Lcom/facebook/ads/redexgen/X/jY;,
        Lcom/facebook/ads/androidx/media3/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/GY;

.field public A04:Lcom/facebook/ads/redexgen/X/jb;

.field public A05:Lcom/facebook/ads/redexgen/X/Kf;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public final A09:I

.field public final A0A:I

.field public final A0B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Kf;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Landroid/util/SparseBooleanArray;

.field public final A0D:Landroid/util/SparseBooleanArray;

.field public final A0E:Landroid/util/SparseIntArray;

.field public final A0F:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0G:Lcom/facebook/ads/redexgen/X/KY;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Kc;

.field public final A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4R;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3015
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3dZ2NVLPQqqn6A0EUODs8QMiUtGNdx7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xuFjaEC88iswWSp8XVRYQuG7fGDdMX6m"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rjdehGUhBmpCCREwTfVtgF2pvaVk7Y4r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d6Khp0uOfqWTO1N40QwEt8A6fbOPCRXM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7DUxEGbk65Je624GBbCgY3TRasgIHugx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "67QtD18zbra6Hv1RLsjBMCgdjZH6dqot"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3juCdNiTPJNnKT5EWnyWnOXcFndGfbid"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ecCIYKwUzA4Q5tjuLJWmpRk8GBJuqhXU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jX;->A0G()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ja;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ja;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jX;->A0L:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jX;-><init>(I)V

    .line 89196
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 89197
    const/4 v1, 0x1

    const v0, 0x1b8a0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/jX;-><init>(III)V

    .line 89198
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 89199
    const-wide/16 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/jt;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/jt;-><init>(I)V

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/jX;-><init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Kc;I)V

    .line 89200
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/Kc;I)V
    .locals 3

    .line 89201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89202
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kc;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0H:Lcom/facebook/ads/redexgen/X/Kc;

    .line 89203
    iput p4, p0, Lcom/facebook/ads/redexgen/X/jX;->A0A:I

    .line 89204
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    .line 89205
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 89206
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    .line 89207
    :goto_0
    const/16 v0, 0x24b8

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    .line 89208
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0C:Landroid/util/SparseBooleanArray;

    .line 89209
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0D:Landroid/util/SparseBooleanArray;

    .line 89210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    .line 89211
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0E:Landroid/util/SparseIntArray;

    .line 89212
    new-instance v0, Lcom/facebook/ads/redexgen/X/KY;

    invoke-direct {v0, p4}, Lcom/facebook/ads/redexgen/X/KY;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    .line 89213
    sget-object v0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A03:Lcom/facebook/ads/redexgen/X/GY;

    .line 89214
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A01:I

    .line 89215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jX;->A0F()V

    .line 89216
    return-void

    .line 89217
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    .line 89218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A00()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 89219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 89220
    .local v0, "searchStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    .line 89221
    .local v1, "limit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    .line 89222
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Kg;->A00([BII)I

    move-result v5

    .line 89223
    .local v2, "syncBytePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89224
    add-int/lit16 v3, v5, 0xbc

    .line 89225
    .local v3, "endOfPacket":I
    if-le v3, v1, :cond_1

    .line 89226
    iget v4, p0, Lcom/facebook/ads/redexgen/X/jX;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "oFbhmyTyFkRbH7nwLSukkKpVMF9MBiPP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/facebook/ads/redexgen/X/jX;->A00:I

    .line 89227
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A00:I

    const/16 v0, 0x178

    if-gt v1, v0, :cond_2

    .line 89228
    :cond_0
    :goto_0
    return v3

    .line 89229
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A00:I

    goto :goto_0

    .line 89230
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A0D(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/jX;)I
    .locals 0

    .line 89231
    iget p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/jX;)I
    .locals 2

    .line 89232
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A02:I

    return v1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/jX;)I
    .locals 0

    .line 89233
    iget p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/jX;I)I
    .locals 0

    .line 89234
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A02:I

    return p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/jX;I)I
    .locals 0

    .line 89235
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A01:I

    return p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;
    .locals 0

    .line 89236
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 89237
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0C:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 89238
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0D:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/GY;
    .locals 0

    .line 89239
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A03:Lcom/facebook/ads/redexgen/X/GY;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kc;
    .locals 0

    .line 89240
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0H:Lcom/facebook/ads/redexgen/X/Kc;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;
    .locals 0

    .line 89241
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A05:Lcom/facebook/ads/redexgen/X/Kf;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/jX;Lcom/facebook/ads/redexgen/X/Kf;)Lcom/facebook/ads/redexgen/X/Kf;
    .locals 0

    .line 89242
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A05:Lcom/facebook/ads/redexgen/X/Kf;

    return-object p1
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "URhJNiPfEIrBtOuckipDqR7YK4paNHr3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/jX;)Ljava/util/List;
    .locals 0

    .line 89243
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    return-object p0
.end method

.method private A0F()V
    .locals 7

    .line 89244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0C:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 89245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 89246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0H:Lcom/facebook/ads/redexgen/X/Kc;

    .line 89247
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A5I()Landroid/util/SparseArray;

    move-result-object v6

    .line 89248
    .local v0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 89249
    .local v1, "initialPayloadReadersSize":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 89250
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "Ni66o4kKOCTyHVW4880FmErKiABvWzx3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kf;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89252
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    new-instance v0, Lcom/facebook/ads/redexgen/X/jZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/jZ;-><init>(Lcom/facebook/ads/redexgen/X/jX;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Lcom/facebook/ads/redexgen/X/KW;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A05:Lcom/facebook/ads/redexgen/X/Kf;

    .line 89254
    return-void
.end method

.method public static A0G()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jX;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x62t
        0x6dt
        0x6dt
        0x6ct
        0x77t
        0x23t
        0x65t
        0x6at
        0x6dt
        0x67t
        0x23t
        0x70t
        0x7at
        0x6dt
        0x60t
        0x23t
        0x61t
        0x7at
        0x77t
        0x66t
        0x2dt
        0x23t
        0x4et
        0x6ct
        0x70t
        0x77t
        0x23t
        0x6ft
        0x6at
        0x68t
        0x66t
        0x6ft
        0x7at
        0x23t
        0x6dt
        0x6ct
        0x77t
        0x23t
        0x62t
        0x23t
        0x57t
        0x71t
        0x62t
        0x6dt
        0x70t
        0x73t
        0x6ct
        0x71t
        0x77t
        0x23t
        0x50t
        0x77t
        0x71t
        0x66t
        0x62t
        0x6et
        0x2dt
    .end array-data
.end method

.method private A0H(J)V
    .locals 9

    .line 89255
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A06:Z

    if-nez v0, :cond_0

    .line 89256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A06:Z

    .line 89257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KY;->A08()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 89258
    new-instance v1, Lcom/facebook/ads/redexgen/X/jb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    .line 89259
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KY;->A09()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    .line 89260
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KY;->A08()J

    move-result-wide v3

    iget v7, p0, Lcom/facebook/ads/redexgen/X/jX;->A01:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/jX;->A0A:I

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/jb;-><init>(Lcom/facebook/ads/redexgen/X/4R;JJII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    .line 89261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A03:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GQ;->A07()Lcom/facebook/ads/redexgen/X/lV;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 89262
    :cond_0
    :goto_0
    return-void

    .line 89263
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jX;->A03:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KY;->A08()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    goto :goto_0
.end method

.method private A0I(I)Z
    .locals 2

    .line 89264
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0D:Landroid/util/SparseBooleanArray;

    .line 89265
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 89266
    :cond_1
    return v1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v5

    .line 89268
    .local v0, "data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/4 v4, 0x0

    const/16 v3, 0xbc

    if-ge v0, v3, :cond_1

    .line 89269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    .line 89270
    .local v1, "bytesLeft":I
    if-lez v1, :cond_0

    .line 89271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-static {v5, v0, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89272
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 89273
    .end local v1    # "bytesLeft":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 89274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v2

    .line 89275
    .local v1, "limit":I
    rsub-int v0, v2, 0x24b8

    invoke-interface {p1, v5, v2, v0}, Lcom/facebook/ads/redexgen/X/lN;->read([BII)I

    move-result v1

    .line 89276
    .local v4, "read":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 89277
    return v4

    .line 89278
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 89279
    .end local v1    # "limit":I
    .end local v4    # "read":I
    goto :goto_0

    .line 89280
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/jX;)Z
    .locals 0

    .line 89281
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    return p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/jX;Z)Z
    .locals 0

    .line 89282
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    return p1
.end method

.method public static synthetic A0M()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 89283
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/jX;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 89284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jX;->A03:Lcom/facebook/ads/redexgen/X/GY;

    .line 89285
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89286
    move-object v7, p0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    .line 89287
    .local v3, "inputLength":J
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    const-wide/16 v8, -0x1

    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 89288
    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    .line 89289
    .local v5, "canReadDuration":Z
    :goto_0
    move-object/from16 v8, p2

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KY;->A0A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89290
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/jX;->A0G:Lcom/facebook/ads/redexgen/X/KY;

    iget v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A01:I

    invoke-virtual {v1, p1, v8, v0}, Lcom/facebook/ads/redexgen/X/KY;->A07(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I

    move-result v0

    return v0

    .line 89291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89292
    :cond_1
    invoke-direct {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/jX;->A0H(J)V

    .line 89293
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A07:Z

    if-eqz v0, :cond_2

    .line 89294
    iput-boolean v5, v7, Lcom/facebook/ads/redexgen/X/jX;->A07:Z

    .line 89295
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/jX;->AIM(JJ)V

    .line 89296
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v9

    cmp-long v4, v9, v0

    if-eqz v4, :cond_2

    .line 89297
    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 89298
    return v11

    .line 89299
    :cond_2
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "sDiEMLnvjhOTPJNI7EdeGtcVnMMFmFVg"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "irXGtuFGajwAGmxrojJd4OjCXPAtU7cs"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-eqz v9, :cond_4

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GQ;->A09()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89300
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    invoke-virtual {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/GQ;->A06(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 89301
    .end local v5    # "canReadDuration":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jX;->A0J(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_13

    sget-object v4, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "pbqhdVjd4r56PJWJm8ke7L1TPhAXhQlh"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-nez v8, :cond_5

    .line 89302
    const/4 v0, -0x1

    return v0

    .line 89303
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jX;->A00()I

    move-result v8

    .line 89304
    .local v5, "endOfPacket":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v10

    .line 89305
    .local v11, "limit":I
    if-le v8, v10, :cond_6

    .line 89306
    return v5

    .line 89307
    :cond_6
    const/4 v11, 0x0

    .line 89308
    .local v12, "packetHeaderFlags":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 89309
    .local v13, "tsPacketHeader":I
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 89310
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89311
    return v5

    .line 89312
    :cond_7
    const/high16 v0, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v11, v0

    .line 89313
    const v0, 0x1fff00

    and-int/2addr v0, v1

    shr-int/lit8 v12, v0, 0x8

    .line 89314
    .local p0, "pid":I
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_a

    const/4 v13, 0x1

    .line 89315
    .local p1, "adaptationFieldExists":Z
    :goto_2
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 89316
    .local p2, "payloadExists":Z
    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Kf;

    .line 89317
    .local v9, "payloadReader":Lcom/facebook/ads/redexgen/X/Kf;
    :goto_4
    if-nez v9, :cond_c

    .line 89318
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89319
    return v5

    .line 89320
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 89321
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 89322
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 89323
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 89324
    :cond_c
    iget v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    if-eq v0, v6, :cond_e

    .line 89325
    and-int/lit8 v4, v1, 0xf

    .line 89326
    .local v6, "continuityCounter":I
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/jX;->A0E:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 89327
    .local v7, "previousCounter":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0E:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 89328
    if-ne v1, v4, :cond_d

    .line 89329
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89330
    return v5

    .line 89331
    :cond_d
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v0, v0, 0xf

    if-eq v4, v0, :cond_e

    .line 89332
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Kf;->AIL()V

    .line 89333
    .end local v6    # "continuityCounter":I
    .end local v7    # "previousCounter":I
    :cond_e
    if-eqz v13, :cond_f

    .line 89334
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v4

    .line 89335
    .local v6, "adaptationFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89336
    .local v7, "adaptationFieldFlags":I
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_12

    .line 89337
    const/4 v0, 0x2

    .line 89338
    :goto_5
    or-int/2addr v11, v0

    .line 89339
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89340
    .end local v6    # "adaptationFieldLength":I
    .end local v7    # "adaptationFieldFlags":I
    :cond_f
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    .line 89341
    .local v6, "wereTracksEnded":Z
    invoke-direct {v7, v12}, Lcom/facebook/ads/redexgen/X/jX;->A0I(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 89342
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 89343
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v9, v0, v11}, Lcom/facebook/ads/redexgen/X/Kf;->A53(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 89344
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 89345
    :cond_10
    iget v1, v7, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11

    if-nez v4, :cond_11

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A08:Z

    if-eqz v0, :cond_11

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    .line 89346
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A07:Z

    .line 89347
    :cond_11
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89348
    const/4 v0, 0x0

    return v0

    .line 89349
    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AGr()V
    .locals 0

    .line 89350
    return-void
.end method

.method public final AIM(JJ)V
    .locals 15

    .line 89351
    move-object v6, p0

    iget v1, v6, Lcom/facebook/ads/redexgen/X/jX;->A09:I

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-eq v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 89352
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 89353
    .local v3, "timestampAdjustersCount":I
    const/4 v8, 0x0

    .local v4, "i":I
    :goto_1
    const-wide/16 v13, 0x0

    move-wide/from16 v3, p3

    if-ge v8, v9, :cond_5

    .line 89354
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0I:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/4R;

    .line 89355
    .local v9, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/4R;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4R;->A04()J

    move-result-wide v10

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 89356
    .local v10, "resetTimestampAdjuster":Z
    :goto_2
    if-nez v0, :cond_0

    .line 89357
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4R;->A02()J

    move-result-wide v11

    .line 89358
    .local v14, "adjusterFirstSampleTimestampUs":J
    cmp-long v0, v11, v1

    if-eqz v0, :cond_2

    cmp-long v10, v11, v13

    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "xsireMETvYUgN4sfQ27n1BF88Hpbgatm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v10, :cond_2

    cmp-long v0, v11, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 89359
    .end local v14    # "adjusterFirstSampleTimestampUs":J
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 89360
    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A07(J)V

    .line 89361
    .end local v9    # "timestampAdjuster":Lcom/facebook/ads/redexgen/X/4R;
    .end local v10    # "resetTimestampAdjuster":Z
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 89362
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 89363
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 89364
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 89365
    .end local v4    # "i":I
    :cond_5
    cmp-long v7, v3, v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "QQ4ASPHg1MFvfTvzRH6TwvvGrvMhPJon"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v7, :cond_8

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    if-eqz v0, :cond_8

    .line 89366
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A04:Lcom/facebook/ads/redexgen/X/jb;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/GQ;->A08(J)V

    .line 89367
    :cond_8
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 89368
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0E:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 89369
    const/4 v1, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 89370
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jX;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kf;->AIL()V

    .line 89371
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 89372
    .end local v4    # "i":I
    :cond_9
    iput v5, v6, Lcom/facebook/ads/redexgen/X/jX;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_a

    .line 89373
    sget-object v2, Lcom/facebook/ads/redexgen/X/jX;->A0K:[Ljava/lang/String;

    const-string v1, "GowRIOwCagyGa1SkNIlwyA0nrp7kipic"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "k5JpOZ1RkOAyzQMCpU3mmbngvjfdQ1X3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_a
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jX;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 89375
    .local v0, "buffer":[B
    const/16 v0, 0x3ac

    const/4 v5, 0x0

    invoke-interface {p1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89376
    const/4 v4, 0x0

    .local v1, "startPosCandidate":I
    :goto_0
    const/16 v0, 0xbc

    if-ge v4, v0, :cond_3

    .line 89377
    const/4 v3, 0x1

    .line 89378
    .local v3, "isSyncBytePatternCorrect":Z
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 89379
    mul-int/lit16 v0, v2, 0xbc

    add-int/2addr v0, v4

    aget-byte v1, v6, v0

    const/16 v0, 0x47

    if-eq v1, v0, :cond_2

    .line 89380
    const/4 v3, 0x0

    .line 89381
    .end local v4    # "i":I
    :cond_0
    if-eqz v3, :cond_1

    .line 89382
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 89383
    const/4 v0, 0x1

    return v0

    .line 89384
    .end local v3    # "isSyncBytePatternCorrect":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89385
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89386
    .end local v1    # "startPosCandidate":I
    :cond_3
    return v5
.end method
