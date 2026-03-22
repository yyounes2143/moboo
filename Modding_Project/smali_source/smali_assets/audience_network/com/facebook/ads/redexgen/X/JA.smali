.class public final Lcom/facebook/ads/redexgen/X/JA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/J9;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public final A05:Ljava/lang/StringBuilder;

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 790
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QrT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qnQt5WyeAQ09x35f49C3fjiJNyL2Wwm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MYPg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gHVF4DBtkYKODoSVDn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "z4XgsVt0P4PakGRoUHMjSa47eQapG64R"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b9pv7rqD0c4j71TLmNGUCRckoksDVk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PMM3oo9z0bIH04LH4O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 43359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    .line 43361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    .line 43362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    .line 43363
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JA;->A0C(I)V

    .line 43364
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 43365
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JA;)I
    .locals 0

    .line 43366
    iget p0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JA;I)I
    .locals 0

    .line 43367
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:I

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JA;I)I
    .locals 0

    .line 43368
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    return p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JA;I)I
    .locals 0

    .line 43369
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    return p1
.end method

.method private A04()Landroid/text/SpannableString;
    .locals 14

    .line 43370
    move-object v9, p0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43371
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 43372
    .local v2, "length":I
    const/4 v6, -0x1

    .line 43373
    .local v3, "underlineStartPosition":I
    const/4 v5, -0x1

    .line 43374
    .local v4, "italicStartPosition":I
    const/4 v4, 0x0

    .line 43375
    .local v5, "colorStartPosition":I
    const/4 v3, -0x1

    .line 43376
    .local v6, "color":I
    const/4 v13, 0x0

    .line 43377
    .local v7, "nextItalic":Z
    const/4 v10, -0x1

    .line 43378
    .local v8, "nextColor":I
    const/4 v2, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 43379
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/J9;

    .line 43380
    .local v10, "cueStyle":Lcom/facebook/ads/redexgen/X/J9;
    iget-boolean v11, v12, Lcom/facebook/ads/redexgen/X/J9;->A02:Z

    .line 43381
    .local v12, "underline":Z
    iget v1, v12, Lcom/facebook/ads/redexgen/X/J9;->A01:I

    .line 43382
    .local v13, "style":I
    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 43383
    const/4 v0, 0x7

    if-ne v1, v0, :cond_9

    const/4 v13, 0x1

    .line 43384
    :goto_1
    if-ne v1, v0, :cond_8

    .line 43385
    :cond_0
    :goto_2
    iget v1, v12, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    .line 43386
    .local p0, "position":I
    add-int/lit8 v12, v2, 0x1

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J9;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    .line 43387
    .local v11, "nextPosition":I
    :goto_3
    if-ne v1, v0, :cond_2

    .line 43388
    .end local v10    # "cueStyle":Lcom/facebook/ads/redexgen/X/J9;
    .end local v11    # "nextPosition":I
    .end local v12    # "underline":Z
    .end local v13    # "style":I
    .end local p0    # "position":I
    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43389
    :cond_2
    const/4 v0, -0x1

    if-eq v6, v0, :cond_6

    if-nez v11, :cond_6

    .line 43390
    invoke-static {v7, v6, v1}, Lcom/facebook/ads/redexgen/X/JA;->A06(Landroid/text/SpannableStringBuilder;II)V

    .line 43391
    const/4 v6, -0x1

    .line 43392
    :cond_3
    :goto_5
    const/4 v0, -0x1

    if-eq v5, v0, :cond_5

    if-nez v13, :cond_5

    .line 43393
    invoke-static {v7, v5, v1}, Lcom/facebook/ads/redexgen/X/JA;->A05(Landroid/text/SpannableStringBuilder;II)V

    .line 43394
    const/4 v5, -0x1

    .line 43395
    :cond_4
    :goto_6
    if-eq v10, v3, :cond_1

    .line 43396
    invoke-static {v7, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/JA;->A07(Landroid/text/SpannableStringBuilder;III)V

    .line 43397
    move v3, v10

    .line 43398
    move v4, v1

    goto :goto_4

    .line 43399
    :cond_5
    const/4 v0, -0x1

    if-ne v5, v0, :cond_4

    if-eqz v13, :cond_4

    .line 43400
    move v5, v1

    goto :goto_6

    .line 43401
    :cond_6
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    if-eqz v11, :cond_3

    .line 43402
    move v6, v1

    goto :goto_5

    .line 43403
    :cond_7
    move v0, v8

    goto :goto_3

    .line 43404
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0v;->A0T()[I

    move-result-object v0

    aget v10, v0, v1

    goto :goto_2

    .line 43405
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .line 43406
    .end local v9    # "i":I
    :cond_a
    const/4 v0, -0x1

    if-eq v6, v0, :cond_b

    if-eq v6, v8, :cond_b

    .line 43407
    invoke-static {v7, v6, v8}, Lcom/facebook/ads/redexgen/X/JA;->A06(Landroid/text/SpannableStringBuilder;II)V

    .line 43408
    :cond_b
    if-eq v5, v0, :cond_c

    if-eq v5, v8, :cond_c

    .line 43409
    invoke-static {v7, v5, v8}, Lcom/facebook/ads/redexgen/X/JA;->A05(Landroid/text/SpannableStringBuilder;II)V

    .line 43410
    :cond_c
    if-eq v4, v8, :cond_d

    .line 43411
    invoke-static {v7, v4, v8, v3}, Lcom/facebook/ads/redexgen/X/JA;->A07(Landroid/text/SpannableStringBuilder;III)V

    .line 43412
    :cond_d
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 43413
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 43414
    return-void
.end method

.method public static A06(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 43415
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 43416
    return-void
.end method

.method public static A07(Landroid/text/SpannableStringBuilder;III)V
    .locals 2

    .line 43417
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 43418
    return-void

    .line 43419
    :cond_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 43420
    return-void
.end method


# virtual methods
.method public final A08(I)Lcom/facebook/ads/redexgen/X/o2;
    .locals 9

    .line 43421
    iget v4, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:I

    add-int/2addr v4, v0

    .line 43422
    .local v0, "startPadding":I
    rsub-int/lit8 v5, v4, 0x20

    .line 43423
    .local v1, "maxTextLength":I
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 43424
    .local v2, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 43425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/4a;->A0e(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 43426
    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "Z1xB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "hIixFY3yygWtziyMrZmiBRgOnmfC1l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 43427
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43428
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JA;->A04()Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/4a;->A0e(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43429
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 43430
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "rBt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    return-object v3

    .line 43431
    :cond_3
    rsub-int/lit8 v8, v4, 0x20

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v8, v0

    .line 43432
    .local v3, "endPadding":I
    sub-int v7, v4, v8

    .line 43433
    .local v4, "startEndPaddingDelta":I
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    .line 43434
    .restart local v5
    :goto_1
    const v2, 0x3dcccccd    # 0.1f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x42000000    # 32.0f

    packed-switch p1, :pswitch_data_0

    .line 43435
    int-to-float v0, v4

    div-float/2addr v0, v1

    .line 43436
    .local p0, "position":F
    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    .line 43437
    .end local p0    # "position":F
    .local v7, "position":F
    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    const/4 v0, 0x7

    const/4 v7, 0x1

    if-le v1, v0, :cond_4

    .line 43438
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    add-int/lit8 v0, v0, -0xf

    .line 43439
    .local v6, "line":I
    add-int/lit8 v6, v0, -0x2

    .line 43440
    .restart local v6    # "line":I
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 43441
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3C;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 43442
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    int-to-float v0, v6

    .line 43443
    invoke-virtual {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43444
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/3C;->A04(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43445
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3C;->A0A(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 43446
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    .line 43447
    return-object v0

    .line 43448
    .end local v6    # "line":I
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    if-ne v0, v7, :cond_5

    iget v6, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    sub-int/2addr v4, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "FzP30KGLJrbEGZLX6W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LdbePQPUJr4EiMizjJFZUiWqoRbmx53S"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int/2addr v6, v4

    goto :goto_3

    :cond_5
    iget v6, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    goto :goto_3

    .line 43449
    .end local v7    # "position":F
    :pswitch_0
    rsub-int/lit8 v0, v8, 0x20

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 43450
    .restart local p0    # "position":F
    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    .line 43451
    .end local p0    # "position":F
    .restart local v7    # "position":F
    goto :goto_2

    .line 43452
    .end local v7    # "position":F
    :pswitch_1
    const/high16 v5, 0x3f000000    # 0.5f

    .line 43453
    .restart local v7    # "position":F
    goto :goto_2

    .line 43454
    .end local v5
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 43455
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_7

    if-gez v8, :cond_8

    .line 43456
    :cond_7
    const/4 p1, 0x1

    .restart local v5
    goto/16 :goto_1

    .line 43457
    .end local v5
    :cond_8
    iget v5, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "zsbn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2pz3wER7XyxppBOwf3KUzADVO23k2y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v5, v6, :cond_a

    :goto_4
    if-lez v7, :cond_a

    .line 43458
    const/4 p1, 0x2

    .restart local v5
    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "Ac2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v5, v6, :cond_a

    goto :goto_4

    .line 43459
    .end local v5
    :cond_a
    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A09()V
    .locals 6

    .line 43460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 43461
    .local v0, "length":I
    if-lez v5, :cond_1

    .line 43462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 43463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 43464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/J9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 43465
    .local v2, "style":Lcom/facebook/ads/redexgen/X/J9;
    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A08:[Ljava/lang/String;

    const-string v1, "VxqvNxDPFU2KcS189G"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "CD1791pAkSaTS5HjwfKDVAxBa1qJnUw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    if-ne v0, v5, :cond_1

    .line 43466
    iget v0, v3, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    .line 43467
    .end local v2    # "style":Lcom/facebook/ads/redexgen/X/J9;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43468
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0A()V
    .locals 3

    .line 43469
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JA;->A04()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 43471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43472
    iget v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 43473
    .local v0, "numRows":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 43474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 43475
    :cond_0
    return-void
.end method

.method public final A0B(C)V
    .locals 2

    .line 43476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v0, 0x20

    if-ge v1, v0, :cond_0

    .line 43477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43478
    :cond_0
    return-void
.end method

.method public final A0C(I)V
    .locals 2

    .line 43479
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    .line 43480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 43483
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    .line 43484
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    .line 43485
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:I

    .line 43486
    return-void
.end method

.method public final A0D(I)V
    .locals 0

    .line 43487
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    .line 43488
    return-void
.end method

.method public final A0E(I)V
    .locals 0

    .line 43489
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 43490
    return-void
.end method

.method public final A0F(IZ)V
    .locals 3

    .line 43491
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/J9;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/J9;-><init>(IZI)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43492
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 43493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Ljava/util/List;

    .line 43494
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Ljava/lang/StringBuilder;

    .line 43495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 43496
    :goto_0
    return v0

    .line 43497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
