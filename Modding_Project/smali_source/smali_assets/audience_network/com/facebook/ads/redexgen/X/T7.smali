.class public final Lcom/facebook/ads/redexgen/X/T7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Qc;->A0i(Lcom/facebook/ads/redexgen/X/iN;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iN;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Qc;

.field public final synthetic A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1814
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mqH0C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Prv4rgxv4XvjDltPpSeqnrL7fWipLvZ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wRAQVkTW0Fdys8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "msKGEa7u"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "70lhKNnmmmhMBIKZ0qoNvOWwjw91iHAS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ylnG6cBHFe0YAiTdKU1DLGP7G6QidCUo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T7;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/iN;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65313
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/iN;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x67

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T7;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x37t
        0x3ft
        0x42t
        0x3bt
        0x3at
        -0xat
        0x4at
        0x45t
        -0xat
        0x3at
        0x45t
        0x4dt
        0x44t
        0x42t
        0x45t
        0x37t
        0x3at
        -0xat
        0x37t
        -0xat
        0x43t
        0x3bt
        0x3at
        0x3ft
        0x37t
        0x4t
    .end array-data
.end method


# virtual methods
.method public final ACh()V
    .locals 6

    .line 65314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qc;->A0a:Lcom/facebook/ads/redexgen/X/iN;

    if-eqz v0, :cond_0

    .line 65315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qc;->A0a:Lcom/facebook/ads/redexgen/X/iN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iN;->A0J()V

    .line 65316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Qc;->A0a:Lcom/facebook/ads/redexgen/X/iN;

    .line 65317
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 65318
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 65319
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0I(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 65320
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    .line 65321
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A04(Lcom/facebook/ads/redexgen/X/Qc;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 65322
    invoke-interface {v3, v1, v2, v0, v4}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 65323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Uh;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 65325
    :cond_1
    return-void
.end method

.method public final ACq()V
    .locals 5

    .line 65326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/iN;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Qc;->A0a:Lcom/facebook/ads/redexgen/X/iN;

    .line 65327
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0H(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/6w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0H(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/6w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0L()V

    .line 65329
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0J(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Ul;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ul;->A04:Lcom/facebook/ads/redexgen/X/Ul;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ul;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0x(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QQ;->AEB()V

    .line 65332
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Z

    if-eqz v0, :cond_2

    .line 65333
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A04:[Ljava/lang/String;

    const-string v1, "lirdd0Qr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "muvxx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A0I(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    .line 65334
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    .line 65335
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65336
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    .line 65337
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0I(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    .line 65338
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Lcom/facebook/ads/redexgen/X/T7;)V

    .line 65339
    const/4 v0, 0x4

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 65340
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0U(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bt;

    .line 65341
    :cond_2
    :goto_0
    return-void

    .line 65342
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A04:[Ljava/lang/String;

    const-string v1, "Y1qaffLCA6OgZ6gO9VGOLjOrervRHVYN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uh;->ACH()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
