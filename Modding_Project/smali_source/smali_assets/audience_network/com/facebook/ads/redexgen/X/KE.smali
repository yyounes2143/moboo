.class public final Lcom/facebook/ads/redexgen/X/KE;
.super Lcom/facebook/ads/redexgen/X/aB;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/graphics/Bitmap;

.field public A03:Landroid/graphics/Paint;

.field public A04:Landroid/graphics/Rect;

.field public A05:Lcom/facebook/ads/redexgen/X/dL;

.field public A06:Lcom/facebook/ads/redexgen/X/Wd;

.field public A07:Lcom/facebook/ads/redexgen/X/KG;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/a5;

.field public final A0C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 918
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zJy5N3L509NIqOAGCBmq2SY7W4xK8HwT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vMyDxD7xbIgTd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0bWjMiKAxESivC84rSJqWsF4vTTr4zpm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NIsgbM1VoVKu1UXdUm6ipB03AExBFzGo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2iAtRdiONhZPMieR3MSLVzPYox5YjbDW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KE;->A04()V

    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0F:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/Wv;)V
    .locals 11

    .line 48095
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A0r()Ljava/lang/String;

    move-result-object v2

    .line 48096
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A06()Z

    move-result v4

    .line 48097
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v9

    .line 48098
    move-object v0, p0

    move-object/from16 v10, p8

    move-object/from16 v8, p7

    move-object/from16 v6, p5

    move-object v5, p4

    move-object v3, p3

    move-object/from16 v7, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/Wv;)V

    .line 48099
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/a5;->A08(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 48100
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 10

    .line 48101
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move-object/from16 v7, p6

    move-object v6, p5

    move-object v5, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 48102
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 10

    .line 48103
    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/aB;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;)V

    .line 48104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/KE;->A0C:Ljava/util/Map;

    .line 48105
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 48106
    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/KE;->A0A:Z

    .line 48107
    new-instance v2, Lcom/facebook/ads/redexgen/X/a5;

    move-object/from16 v8, p9

    move-object/from16 v6, p8

    move-object v7, p5

    move-object/from16 v5, p7

    move-object v4, p2

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/Xn;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    .line 48108
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/KE;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48109
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 48110
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/Wv;)V
    .locals 11

    .line 48111
    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/aB;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;)V

    .line 48112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/KE;->A0C:Ljava/util/Map;

    .line 48113
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 48114
    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/KE;->A0A:Z

    .line 48115
    new-instance v2, Lcom/facebook/ads/redexgen/X/a5;

    move-object/from16 v10, p10

    move-object/from16 v8, p9

    move-object/from16 v6, p8

    move-object/from16 v7, p5

    move-object/from16 v5, p7

    move-object v4, p2

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Wv;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    .line 48116
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/KE;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48117
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 48118
    return-void
.end method

.method public static A00(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 48119
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 48120
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 48121
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48122
    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 48123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 48124
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48125
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48126
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 4

    .line 48127
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48128
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A0d:Lcom/facebook/ads/redexgen/X/XX;

    .line 48129
    .local v0, "encodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 48130
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XY;->A03(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48131
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A00(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    .line 48132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:Landroid/graphics/Paint;

    .line 48133
    sget v2, Lcom/facebook/ads/redexgen/X/KE;->A0F:I

    sget v1, Lcom/facebook/ads/redexgen/X/KE;->A0F:I

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 48134
    .end local v0    # "encodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :cond_0
    return-void

    .line 48135
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A11:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_0
.end method

.method private A03()V
    .locals 4

    .line 48136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/Wd;

    if-eqz v0, :cond_1

    .line 48137
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/Wd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0E:[Ljava/lang/String;

    const-string v1, "Jn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "nM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wd;->A06()Z

    .line 48138
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Lcom/facebook/ads/redexgen/X/KG;

    if-eqz v0, :cond_2

    .line 48139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Lcom/facebook/ads/redexgen/X/KG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KG;->A04()V

    .line 48140
    :cond_2
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0x15t
        -0x18t
        -0x1et
        -0x16t
        -0x22t
        -0xet
        -0x12t
        -0xct
        -0xft
        -0x1et
        -0x1ct
        -0x17t
        -0x1bt
        -0x50t
        -0x10t
        -0x18t
        -0xat
        -0xat
        -0x18t
        -0xft
        -0x16t
        -0x18t
        -0xbt
        0x28t
        0x26t
        0x18t
        0x25t
        0x16t
        0x1ft
        0x1ct
        0x16t
        0x1et
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/hy;)Z
    .locals 5

    .line 48141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hy;->A1w()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hy;->A1u()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 4

    .line 48142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48143
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0

    .line 48144
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A03()V

    .line 48145
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48146
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)Z
    .locals 9

    .line 48147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/Wd;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48148
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NF;->A01()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48149
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NF;->A00()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48150
    :cond_0
    return v1

    .line 48151
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/KG;

    .line 48152
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A1u()I

    move-result v2

    .line 48153
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A1w()I

    move-result v3

    .line 48154
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A1v()I

    move-result v4

    .line 48155
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NF;->A01()Ljava/lang/String;

    move-result-object v5

    .line 48156
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NF;->A00()Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/KG;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/KE;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Lcom/facebook/ads/redexgen/X/KG;

    .line 48157
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A1w()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Lcom/facebook/ads/redexgen/X/KG;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/Wd;

    .line 48158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 48159
    const/4 v0, 0x1

    return v0

    .line 48160
    :cond_2
    return v1
.end method

.method public getCtaActionHelper()Lcom/facebook/ads/redexgen/X/a5;
    .locals 1

    .line 48161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 48162
    .local v0, "this":Lcom/facebook/ads/redexgen/X/KE;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    const/16 v2, 0x18

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    .line 48163
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/KE;
    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 48164
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/aB;->onDetachedFromWindow()V

    .line 48165
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A03()V

    .line 48166
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 48167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Landroid/graphics/Rect;

    .line 48169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    .line 48170
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:I

    .line 48171
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:I

    add-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    .line 48172
    .local v0, "shift":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48173
    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48174
    .end local v0    # "shift":I
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/aB;->onDraw(Landroid/graphics/Canvas;)V

    .line 48175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 48176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v2, v0

    .line 48177
    .local v0, "textWidth":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v4, v1

    .line 48178
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 48179
    .local v2, "top":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    add-int/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    add-int/2addr v0, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48180
    .local v3, "destRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48182
    .end local v0    # "textWidth":F
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "destRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 48183
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aB;->onVisibilityChanged(Landroid/view/View;I)V

    .line 48184
    if-eqz p2, :cond_0

    .line 48185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A03()V

    .line 48186
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 48187
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/aB;->onWindowFocusChanged(Z)V

    .line 48188
    if-nez p1, :cond_0

    .line 48189
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A03()V

    .line 48190
    :cond_0
    return-void
.end method

.method public setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V
    .locals 1

    .line 48191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a5;->A09(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 48192
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48193
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 48194
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wv;",
            "Lcom/facebook/ads/redexgen/X/a4;",
            ")V"
        }
    .end annotation

    .line 48195
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 48196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/a5;->A0A(Lcom/facebook/ads/redexgen/X/Wv;)V

    .line 48197
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/a4;",
            ")V"
        }
    .end annotation

    .line 48198
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KE;->A08:Ljava/lang/String;

    .line 48199
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    .line 48200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/a5;->A0B(Lcom/facebook/ads/redexgen/X/a4;)V

    .line 48202
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A04()Ljava/lang/String;

    move-result-object v1

    .line 48203
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48204
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->setVisibility(I)V

    .line 48205
    return-void

    .line 48206
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/aB;->setText(Ljava/lang/String;)V

    .line 48207
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A02()V

    .line 48208
    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .locals 1

    .line 48209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a5;->A0C(Z)V

    .line 48210
    return-void
.end method
