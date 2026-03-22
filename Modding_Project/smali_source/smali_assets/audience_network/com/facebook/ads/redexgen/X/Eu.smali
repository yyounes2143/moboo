.class public final Lcom/facebook/ads/redexgen/X/Eu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Et;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Et;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Et;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:I

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Et;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[Lcom/facebook/ads/redexgen/X/Et;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 680
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yeCTR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vbYpGeRKHwsNyxajpSfuheCIvaYNa3MM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oEndzsHg4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8UJlx4orYPxMpFHWptRgD2Ht"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cT5Bq67DmISXhs3jX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HBUYvmEJLfhzIFqS0furUTPx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yflab"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bdcCFsYTxOJVXsfU13RZ00QELBiL0cIH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Eq;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Eu;->A08:Ljava/util/Comparator;

    .line 681
    new-instance v0, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Er;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Eu;->A09:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35211
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:I

    .line 35212
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:[Lcom/facebook/ads/redexgen/X/Et;

    .line 35213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    .line 35214
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    .line 35215
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/Et;)I
    .locals 1

    .line 35216
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Et;->A01:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/Et;)I
    .locals 1

    .line 35217
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method private A02()V
    .locals 3

    .line 35218
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 35219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Eu;->A08:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35220
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    .line 35221
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 2

    .line 35222
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    if-eqz v0, :cond_0

    .line 35223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Eu;->A09:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35224
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    .line 35225
    :cond_0
    return-void
.end method

.method private final A04(IF)V
    .locals 4

    .line 35226
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eu;->A02()V

    .line 35227
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:[Lcom/facebook/ads/redexgen/X/Et;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    aget-object v2, v1, v0

    .line 35228
    .local v0, "newSample":Lcom/facebook/ads/redexgen/X/Et;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Et;->A01:I

    .line 35229
    iput p1, v2, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    .line 35230
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    .line 35231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35232
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    .line 35233
    :cond_0
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:I

    if-le v1, v0, :cond_3

    .line 35234
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:I

    sub-int/2addr v1, v0

    .line 35235
    .local v1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Et;

    .line 35236
    .local v2, "oldestSample":Lcom/facebook/ads/redexgen/X/Et;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    if-gt v0, v1, :cond_1

    .line 35237
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    .line 35238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35239
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 35240
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:[Lcom/facebook/ads/redexgen/X/Et;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    aput-object v3, v2, v1

    goto :goto_1

    .line 35241
    :cond_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    .line 35242
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    goto :goto_1

    .line 35243
    :cond_2
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Et;-><init>(Lcom/facebook/ads/redexgen/X/Es;)V

    goto :goto_0

    .line 35244
    :cond_3
    return-void
.end method


# virtual methods
.method public final A05(F)F
    .locals 7

    .line 35245
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eu;->A03()V

    .line 35246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    int-to-float v4, v0

    mul-float/2addr v4, p1

    .line 35247
    .local v0, "desiredWeight":F
    const/4 v5, 0x0

    .line 35248
    .local v1, "accumulatedWeight":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const-string v1, "tMnKu67VMHjg0RGb1V9fdd44wq1tOS9W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v6, :cond_2

    .line 35249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Et;

    .line 35250
    .local v3, "currentSample":Lcom/facebook/ads/redexgen/X/Et;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    add-int/2addr v5, v0

    .line 35251
    int-to-float v0, v5

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 35252
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    return v0

    .line 35253
    .end local v3    # "currentSample":Lcom/facebook/ads/redexgen/X/Et;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35254
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_1
    return v0

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Et;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    goto :goto_1
.end method

.method public final A06()V
    .locals 1

    .line 35255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35256
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:I

    .line 35257
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:I

    .line 35258
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    .line 35259
    return-void
.end method

.method public final A07(IF)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D20155618 Samples OutOfBounds Error Check Fix"
    .end annotation

    .line 35260
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1G:Lcom/facebook/ads/redexgen/X/i2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35261
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eu;->A04(IF)V

    .line 35262
    return-void

    .line 35263
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eu;->A02()V

    .line 35264
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:[Lcom/facebook/ads/redexgen/X/Et;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    aget-object v2, v1, v0

    .line 35265
    .local v0, "newSample":Lcom/facebook/ads/redexgen/X/Et;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Et;->A01:I

    .line 35266
    iput p1, v2, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    .line 35267
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Et;->A00:F

    .line 35268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35269
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    .line 35270
    :cond_1
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:I

    if-le v1, v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35271
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:I

    sub-int/2addr v1, v0

    .line 35272
    .local v1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Et;

    .line 35273
    .local v2, "oldestSample":Lcom/facebook/ads/redexgen/X/Et;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    if-gt v0, v1, :cond_4

    .line 35274
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35275
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const-string v1, "3KNEloHV0yOGYGtjjhul0kjR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "CQhg8nP9eAQ7nTj9eI4Xv7HE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35276
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    .line 35277
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:[Lcom/facebook/ads/redexgen/X/Et;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A07:[Ljava/lang/String;

    const-string v1, "1EJuh5GaS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pMRpDkTII4u81yBOo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:I

    aput-object v3, v4, v1

    goto/16 :goto_1

    .line 35278
    :cond_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Et;->A02:I

    .line 35279
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:I

    goto/16 :goto_1

    .line 35280
    :cond_5
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Et;-><init>(Lcom/facebook/ads/redexgen/X/Es;)V

    goto/16 :goto_0

    .line 35281
    :cond_6
    return-void
.end method
