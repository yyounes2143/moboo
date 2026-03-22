.class public final Lcom/facebook/ads/redexgen/X/UJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UG;,
        Lcom/facebook/ads/redexgen/X/UH;,
        Lcom/facebook/ads/redexgen/X/UI;,
        Lcom/facebook/ads/redexgen/X/UF;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UF;

.field public A01:Lcom/facebook/ads/redexgen/X/UG;

.field public A02:Lcom/facebook/ads/redexgen/X/UH;

.field public A03:Lcom/facebook/ads/redexgen/X/UI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1873
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VndfGBIDInq1AmGKWEXIYtH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X1ufgR44W1Z84U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "za8Aa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xjBfTCMiG1bFh7NB9hwMlLVXQHNbTqdl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vkDSrNK7CnANJUjGZxXcCXY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "njWPP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67431
    sget-object v0, Lcom/facebook/ads/redexgen/X/UG;->A03:Lcom/facebook/ads/redexgen/X/UG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Lcom/facebook/ads/redexgen/X/UG;

    .line 67432
    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A06:Lcom/facebook/ads/redexgen/X/UH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    .line 67433
    sget-object v0, Lcom/facebook/ads/redexgen/X/UI;->A02:Lcom/facebook/ads/redexgen/X/UI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/UI;

    .line 67434
    sget-object v0, Lcom/facebook/ads/redexgen/X/UF;->A02:Lcom/facebook/ads/redexgen/X/UF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Lcom/facebook/ads/redexgen/X/UF;

    .line 67435
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 67436
    sget-object v0, Lcom/facebook/ads/redexgen/X/UF;->A03:Lcom/facebook/ads/redexgen/X/UF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Lcom/facebook/ads/redexgen/X/UF;

    .line 67437
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 67438
    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A04:Lcom/facebook/ads/redexgen/X/UH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    .line 67439
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 67440
    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A05:Lcom/facebook/ads/redexgen/X/UH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    .line 67441
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 67442
    sget-object v0, Lcom/facebook/ads/redexgen/X/UI;->A03:Lcom/facebook/ads/redexgen/X/UI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/UI;

    .line 67443
    return-void
.end method

.method public final A04()Z
    .locals 4

    .line 67444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A06:Lcom/facebook/ads/redexgen/X/UH;

    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A04:[Ljava/lang/String;

    const-string v1, "r152EQyYeE04Ovy9QYMfnLx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "I6yTYbMajK96Zgvn6mn7gLC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/UH;

    if-eq v3, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A05:Lcom/facebook/ads/redexgen/X/UH;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()Z
    .locals 2

    .line 67445
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A06:Lcom/facebook/ads/redexgen/X/UH;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UH;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/UH;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06()Z
    .locals 2

    .line 67446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/UI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UI;->A03:Lcom/facebook/ads/redexgen/X/UI;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07()Z
    .locals 2

    .line 67447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Lcom/facebook/ads/redexgen/X/UF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UF;->A03:Lcom/facebook/ads/redexgen/X/UF;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
