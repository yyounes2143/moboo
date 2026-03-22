.class public final Lcom/facebook/ads/redexgen/X/au;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Lcom/facebook/ads/redexgen/X/KE;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:I

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Lcom/facebook/ads/redexgen/X/hy;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Ml;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A0I:Lcom/facebook/ads/redexgen/X/N0;

.field public final A0J:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0M:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2515
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pFRbUbIPvfwTsTWtR68DyqtfsQzo0Y9e"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Jmt0yS7cxIqywVTLVazlNOZqViG4fijG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7JVXgwFSulrh0z9RNSntkrow2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "W96LwBzZpPkBapcy7gGTKWs8B4GUDBcq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "br88nFbBZbLJ3vTh4p9wwCNTIA57FmIY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mzQptMR0Z3d1fPQPbwNf4EthVYWzR3DW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IPE7BiI9pZn923UUuncSvZhUL3wMHGrT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "br6hrssh6VRKiVV1vNUkmhf3WWjX02F0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/au;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Ua;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 2

    .line 76538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76539
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    .line 76540
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    .line 76541
    const/16 v1, 0xa

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    .line 76542
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    .line 76543
    const/16 v0, 0x28

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A05:I

    .line 76544
    const/16 v0, 0x34

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A06:I

    .line 76545
    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 76546
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A07:I

    .line 76547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0B:Z

    .line 76548
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 76549
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/au;->A0L:Lcom/facebook/ads/redexgen/X/Xn;

    .line 76550
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    .line 76551
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0I:Lcom/facebook/ads/redexgen/X/N0;

    .line 76552
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0G:Lcom/facebook/ads/redexgen/X/Ml;

    .line 76553
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/au;->A0E:Landroid/os/Handler;

    .line 76554
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A2K()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0C:Z

    .line 76555
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0M:Z

    .line 76556
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A2G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0A:Z

    .line 76557
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dC;->A00(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    .line 76558
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/au;->A0K:Lcom/facebook/ads/redexgen/X/Ua;

    .line 76559
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/au;->A0F:Lcom/facebook/ads/redexgen/X/hy;

    .line 76560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/au;->A02()V

    .line 76561
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/KE;)Landroid/widget/ImageView;
    .locals 5

    .line 76562
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0j:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 76563
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    const/4 v2, 0x1

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76564
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76565
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76566
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76567
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 76568
    .local v4, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 76569
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76570
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76571
    iget v3, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76572
    new-instance v0, Lcom/facebook/ads/redexgen/X/ar;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ar;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76573
    const v2, 0x800035

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 76574
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76575
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76576
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76577
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/au;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "XwNXbwlUcFi7qEktIehGuIyqazGrk614"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hx9Csixc74t4pIrSAOrr1o5nquGlqFF4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 76578
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    .line 76579
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    .line 76580
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    .line 76581
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    .line 76582
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A05:I

    .line 76583
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A06:I

    .line 76584
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 76585
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0D:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/au;->A07:I

    .line 76586
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/au;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x76t
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x4t
        0x61t
        0x61t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x25t
        0x29t
        0x2bt
        0x68t
        0x20t
        0x27t
        0x25t
        0x23t
        0x24t
        0x29t
        0x29t
        0x2dt
        0x68t
        0x27t
        0x22t
        0x35t
        0x68t
        0x2ft
        0x28t
        0x32t
        0x23t
        0x34t
        0x35t
        0x32t
        0x2ft
        0x32t
        0x2ft
        0x27t
        0x2at
        0x68t
        0x20t
        0x2ft
        0x28t
        0x2ft
        0x35t
        0x2et
        0x19t
        0x27t
        0x25t
        0x32t
        0x2ft
        0x30t
        0x2ft
        0x32t
        0x3ft
        0x2at
        0x32t
        0x30t
        0x29t
    .end array-data
.end method

.method private A04(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 76587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76588
    .local v0, "view":Landroid/view/View;
    const/16 v2, 0x9

    const/16 v1, 0x9

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76589
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 76590
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76591
    return-void
.end method

.method private A05(Landroid/widget/FrameLayout;)V
    .locals 12

    .line 76592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76593
    .local v0, "frameLayoutForCreditLine":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/au;->A0K:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/au;->A0F:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/au;->A0L:Lcom/facebook/ads/redexgen/X/Xn;

    sget-object v9, Lcom/facebook/ads/redexgen/X/Z5;->A02:Lcom/facebook/ads/redexgen/X/Z5;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/au;->A0E:Landroid/os/Handler;

    sget-object v11, Lcom/facebook/ads/redexgen/X/Z6;->A02:Lcom/facebook/ads/redexgen/X/Z6;

    .line 76594
    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Z9;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Z6;)Landroid/widget/ImageView;

    move-result-object v5

    .line 76595
    .local v1, "creditLineView":Landroid/widget/ImageView;
    const/4 v1, -0x2

    const v0, 0x800055

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 76596
    .local v2, "creditLineLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76597
    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76598
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76599
    return-void
.end method

.method private A06(Landroid/widget/FrameLayout;Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 13

    .line 76600
    move-object v12, p0

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76601
    .local v2, "parent":Landroid/widget/FrameLayout;
    iget v2, v12, Lcom/facebook/ads/redexgen/X/au;->A06:I

    iget v1, v12, Lcom/facebook/ads/redexgen/X/au;->A02:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/au;->A02:I

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 76602
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0C:Z

    if-eqz v0, :cond_0

    .line 76603
    new-instance v0, Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {v0, v12, p2}, Lcom/facebook/ads/redexgen/X/at;-><init>(Lcom/facebook/ads/redexgen/X/au;Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76604
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0g:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 76605
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget v1, v12, Lcom/facebook/ads/redexgen/X/au;->A04:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/au;->A04:I

    const/4 v2, 0x1

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76606
    .local v4, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76607
    .local v5, "imageView":Landroid/widget/ImageView;
    const/16 v0, 0x3ea

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 76608
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76609
    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76610
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 76611
    .local v9, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 76612
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76613
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76614
    iget v3, v12, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v2, v12, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v1, v12, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/au;->A01:I

    invoke-virtual {v6, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76615
    const v0, 0x800035

    const/4 v4, -0x2

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 76616
    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v11, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76617
    new-instance v0, Lcom/facebook/ads/redexgen/X/aq;

    invoke-direct {v0, v12}, Lcom/facebook/ads/redexgen/X/aq;-><init>(Lcom/facebook/ads/redexgen/X/au;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76618
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0I:Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v2

    .line 76619
    .local v12, "delay":J
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/au;->A09:Z

    if-eqz v0, :cond_2

    .line 76620
    iget-object v3, v12, Lcom/facebook/ads/redexgen/X/au;->A0I:Lcom/facebook/ads/redexgen/X/N0;

    sget-object v1, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "EDg5a4vgNKTBN5Vd4K7j2JAWQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/N0;->A01()J

    move-result-wide v2

    .line 76621
    :cond_2
    iget-boolean v9, v12, Lcom/facebook/ads/redexgen/X/au;->A0B:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_6

    sget-object v8, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "lPr3oecF17Vr0ETjxWpa6eT7xUG7TKGz"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "pN0Dd6Okr1h1scp4h6gPnTJrQwG996nC"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_4

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 76622
    const/4 v10, 0x0

    .line 76623
    .local v6, "dubiousSkip":Landroid/widget/ImageView;
    iget-boolean v9, v12, Lcom/facebook/ads/redexgen/X/au;->A0A:Z

    sget-object v8, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v8, v0

    const/4 v0, 0x6

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v8, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "NBSSb5i8vB7h2DITQFZ0JVIGTEGpjtjm"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "r6oo3XDBH3cPwN6mP2aoTtDXeEGymFZK"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_3

    :goto_1
    if-eqz p2, :cond_3

    .line 76624
    invoke-direct {v12, p2}, Lcom/facebook/ads/redexgen/X/au;->A00(Lcom/facebook/ads/redexgen/X/KE;)Landroid/widget/ImageView;

    move-result-object v10

    .line 76625
    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76626
    :cond_3
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v6, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/dC;->A01(Landroid/content/Context;Landroid/view/View;JLandroid/view/View;)V

    .line 76627
    .end local v6    # "dubiousSkip":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v7, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76628
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/au;->A0B:Z

    if-nez v0, :cond_8

    .line 76629
    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v8, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "LTYB5M4Mhdd1oprOtejFkg7YcKqdK9Vm"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "s8tsGyr3r09N1mPmkZSZvoZyMzIeZ0vJ"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_6
    sget-object v8, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "tzOwMkw7uDsuhpEAhy55DDXkTNG5R2eG"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "LVlHDeBQ28ZWrMMDEXcUdCCcU9GvuA6m"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/au;->A0O:[Ljava/lang/String;

    const-string v1, "Yzc02jbTluogikiQi2Wv962AcLGu9uF1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JahYjLhPUhQBnUZY2LL7YeIOJlGmyCNi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76630
    :cond_8
    const/16 v1, 0x30

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76631
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 5

    .line 76632
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76633
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76634
    iget v3, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:I

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 76635
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setTextSize(F)V

    .line 76636
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aB;->A0D()V

    .line 76637
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setIncludeFontPadding(Z)V

    .line 76638
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76639
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setTextColor(I)V

    .line 76640
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 76641
    const/4 v0, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76642
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 76643
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setId(I)V

    .line 76644
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KE;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76645
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KE;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76646
    :cond_0
    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KE;Landroid/view/View;)V
    .locals 3

    .line 76647
    const/16 v2, 0x3f

    const/4 v1, 0x4

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    .line 76648
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->setVisibility(I)V

    .line 76649
    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/View;
    .locals 1

    .line 76650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/au;->A0A(Lcom/facebook/ads/redexgen/X/KE;Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/KE;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 13

    .line 76651
    move-object v2, p0

    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/au;->A08:Lcom/facebook/ads/redexgen/X/KE;

    .line 76652
    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/au;->A09:Z

    .line 76653
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76654
    .local v5, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v5, -0x1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76655
    new-instance v7, Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0G:Lcom/facebook/ads/redexgen/X/Ml;

    .line 76656
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;ZZZ)V

    .line 76657
    .local v6, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/aQ;
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    .line 76658
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    .line 76659
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mw;->A0D()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 76660
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 76661
    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 76662
    const/16 v4, 0x1c

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/aQ;->setTitleTextSize(I)V

    .line 76663
    const/16 v4, 0xd

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/aQ;->setDescriptionTextSize(I)V

    .line 76664
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/aQ;->A02()V

    .line 76665
    iget v6, v2, Lcom/facebook/ads/redexgen/X/au;->A05:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/au;->A05:I

    invoke-virtual {v7, v6, v1, v4, v1}, Lcom/facebook/ads/redexgen/X/aQ;->setPadding(IIII)V

    .line 76666
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76667
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 76668
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/au;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/U7;->A1C(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76669
    new-instance v4, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v4, v2, p1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Lcom/facebook/ads/redexgen/X/au;Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76670
    :cond_0
    iget v4, v2, Lcom/facebook/ads/redexgen/X/au;->A04:I

    neg-int v4, v4

    invoke-virtual {v6, v1, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76671
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76672
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 76673
    if-eqz p2, :cond_2

    .line 76674
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 76675
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76676
    :cond_1
    invoke-virtual {v6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76677
    :cond_2
    const/4 v3, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76678
    .local v3, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v2, Lcom/facebook/ads/redexgen/X/au;->A07:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/au;->A07:I

    invoke-virtual {v5, v1, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 76679
    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76680
    if-eqz p1, :cond_3

    .line 76681
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/au;->A07(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 76682
    invoke-virtual {v6, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76683
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KE;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76684
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 76685
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 76686
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/au;->A04(Landroid/widget/FrameLayout;)V

    .line 76687
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76688
    invoke-direct {v2, v0, p1}, Lcom/facebook/ads/redexgen/X/au;->A06(Landroid/widget/FrameLayout;Lcom/facebook/ads/redexgen/X/KE;)V

    .line 76689
    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/au;->A0M:Z

    if-eqz v1, :cond_4

    .line 76690
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/au;->A05(Landroid/widget/FrameLayout;)V

    .line 76691
    :cond_4
    return-object v0

    .line 76692
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/KE;
    .locals 1

    .line 76693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A08:Lcom/facebook/ads/redexgen/X/KE;

    return-object v0
.end method

.method public final synthetic A0C(Landroid/view/View;)V
    .locals 4

    .line 76694
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/au;->A0L:Lcom/facebook/ads/redexgen/X/Xn;

    const/16 v2, 0x12

    const/16 v1, 0x2d

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 76695
    return-void
.end method

.method public final A0D(Z)V
    .locals 0

    .line 76696
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/au;->A0B:Z

    .line 76697
    return-void
.end method
