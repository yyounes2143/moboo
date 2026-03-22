.class public final Lcom/facebook/ads/redexgen/X/2B;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2A;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 76
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZtAeFZn0B1qTMkAv4TimNf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "onjqbWPlpraCurTtWuR0R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "izLFZdnLPv7lUm1GFercP1dDHTQqqlbm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "06udDjCQiMTHlo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ThrPk51efRSGKxf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UllMG4WENFsjBGTIREywCD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xUDuL0NOtKss50bSSzha3FmKwjhZHM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2ZQ9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 9428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9429
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    .line 9430
    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 0

    .line 9431
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2B;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 9432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public final A01(I)I
    .locals 2

    .line 9433
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A00(III)I

    .line 9434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 9435
    const/4 v7, 0x1

    if-ne p0, p1, :cond_0

    .line 9436
    return v7

    .line 9437
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2B;

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 9438
    return v6

    .line 9439
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2B;

    .line 9440
    .local v1, "that":Lcom/facebook/ads/redexgen/X/2B;
    sget v3, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const-string v1, "V79UaeNQVFwVWh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sTKtjiNlOf72YkaUZZtiJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x18

    if-ge v3, v0, :cond_8

    .line 9441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_3

    if-eq v4, v3, :cond_4

    .line 9442
    :goto_0
    return v6

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const-string v1, "gWINzXnVkNSV1XpcBprNZ7cfktAxvgY6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    goto :goto_0

    .line 9443
    :cond_4
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 9444
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2B;->A01(I)I

    move-result v4

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/2B;->A01(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const-string v1, "0EnUC3S7s3BqIyD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "m0OD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_5

    .line 9445
    return v6

    .line 9446
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9447
    .end local v3    # "i":I
    :cond_7
    return v7

    .line 9448
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 9449
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_2

    .line 9450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v3

    .line 9451
    .local v0, "hashCode":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 9452
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2B;->A01(I)I

    move-result v0

    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    .line 9453
    sget-object v2, Lcom/facebook/ads/redexgen/X/2B;->A01:[Ljava/lang/String;

    const-string v1, "oTlXYQnTcFkgjJigc1HTEJLN2hql86lz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9454
    .end local v1    # "i":I
    :cond_1
    return v3

    .line 9455
    .end local v0    # "hashCode":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method
