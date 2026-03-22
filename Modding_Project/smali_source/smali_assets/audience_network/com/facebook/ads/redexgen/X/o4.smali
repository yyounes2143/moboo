.class public final Lcom/facebook/ads/redexgen/X/o4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/o4;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/o4;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3214
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W5WZRfo3traFBsuJqUeacov"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AOz8vYfc0kUMyRrWtsrS4pOQsYE8BP6P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ocEUeDJ9UZl7Q6o8h21wMsDJowBHj84j"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pkgO1YjXdbsvKDgws3J49uWJB6yyqkG7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vCvp8tg1JPxrxhdMnot9YI84PFBkssaD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dazl9IXOnyCH5QLsvPseWpscLh5D5M0t"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYJ1zYUUdaXBOvkE2t6KLICz8MhT9p2M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ySOVjFSAiUWhoASiDo2jZct"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/o4;->A04:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/o4;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A06:Lcom/facebook/ads/redexgen/X/o4;

    .line 3215
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A0A:Ljava/lang/String;

    .line 3216
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A07:Ljava/lang/String;

    .line 3217
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A09:Ljava/lang/String;

    .line 3218
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A08:Ljava/lang/String;

    .line 3219
    new-instance v0, Lcom/facebook/ads/redexgen/X/o5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/o5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/o4;->A05:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 101334
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/o4;-><init>(IIIF)V

    .line 101335
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 101336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101337
    iput p1, p0, Lcom/facebook/ads/redexgen/X/o4;->A03:I

    .line 101338
    iput p2, p0, Lcom/facebook/ads/redexgen/X/o4;->A01:I

    .line 101339
    iput p3, p0, Lcom/facebook/ads/redexgen/X/o4;->A02:I

    .line 101340
    iput p4, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:F

    .line 101341
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/o4;
    .locals 5

    .line 101342
    sget-object v0, Lcom/facebook/ads/redexgen/X/o4;->A0A:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 101343
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/o4;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 101344
    .local v2, "height":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/o4;->A09:Ljava/lang/String;

    .line 101345
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 101346
    .local v1, "unappliedRotationDegrees":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/o4;->A08:Ljava/lang/String;

    .line 101347
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 101348
    .local v3, "pixelWidthHeightRatio":F
    new-instance v0, Lcom/facebook/ads/redexgen/X/o4;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(IIIF)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 101349
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 101350
    return v4

    .line 101351
    :cond_0
    instance-of v3, p1, Lcom/facebook/ads/redexgen/X/o4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/o4;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/o4;->A04:[Ljava/lang/String;

    const-string v1, "xwJKUsQcskzDCgeEWIG9ozPdTsTzWcW9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "cRblKPLDWf1oyG1RJoVr7n5QNKGN7idl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 101352
    check-cast p1, Lcom/facebook/ads/redexgen/X/o4;

    .line 101353
    .local v1, "other":Lcom/facebook/ads/redexgen/X/o4;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/o4;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/o4;->A03:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/o4;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/o4;->A01:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/o4;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/o4;->A02:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/o4;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 101354
    .end local v1    # "other":Lcom/facebook/ads/redexgen/X/o4;
    :cond_2
    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 101355
    const/4 v0, 0x7

    .line 101356
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A03:I

    add-int/2addr v1, v0

    .line 101357
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A01:I

    add-int/2addr v1, v0

    .line 101358
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A02:I

    add-int/2addr v1, v0

    .line 101359
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 101360
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
