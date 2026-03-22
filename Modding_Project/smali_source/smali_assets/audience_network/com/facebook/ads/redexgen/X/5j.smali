.class public final Lcom/facebook/ads/redexgen/X/5j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/DecoderReuseEvaluation$DecoderDiscardReasons;,
        Lcom/facebook/ads/androidx/media3/exoplayer/DecoderReuseEvaluation$DecoderReuseResult;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/or;

.field public final A03:Lcom/facebook/ads/redexgen/X/or;

.field public final A04:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 374
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kbrCq6pMhmUkuvpwyFR35DcipjG4S8CW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oaW9l9tdb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0TRcVMdqb51VWoFscAzJe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "b9KyZslhVmWVmt6Bq2rIk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ASY6aJ5KLIO5E4dZs7qVgEBqztuPzXSE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Pc37QLTRQIuoUm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qelQYpgVCE3t9Ri2JAAORJatu68jVLQj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5j;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;II)V
    .locals 1

    .line 16438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16439
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 16440
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A04:Ljava/lang/String;

    .line 16441
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A03:Lcom/facebook/ads/redexgen/X/or;

    .line 16442
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 16443
    iput p4, p0, Lcom/facebook/ads/redexgen/X/5j;->A01:I

    .line 16444
    iput p5, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    .line 16445
    return-void

    .line 16446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 16447
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 16448
    return v4

    .line 16449
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 16450
    .end local v2
    :cond_1
    return v2

    .line 16451
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/5j;

    .line 16452
    .local v2, "other":Lcom/facebook/ads/redexgen/X/5j;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/5j;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/5j;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5j;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5j;->A04:Ljava/lang/String;

    .line 16453
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5j;->A03:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5j;->A03:Lcom/facebook/ads/redexgen/X/or;

    .line 16454
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/or;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5j;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5j;->A05:[Ljava/lang/String;

    const-string v1, "94n8VTHvI2C2zF2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5j;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5j;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 16455
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/or;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16456
    :goto_0
    return v4

    .line 16457
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 16458
    const/16 v0, 0x11

    .line 16459
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A01:I

    add-int/2addr v1, v0

    .line 16460
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    add-int/2addr v1, v0

    .line 16461
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16462
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A03:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/or;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16463
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A02:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/or;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16464
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method
