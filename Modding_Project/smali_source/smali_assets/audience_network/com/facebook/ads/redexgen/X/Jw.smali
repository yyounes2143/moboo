.class public abstract Lcom/facebook/ads/redexgen/X/Jw;
.super Lcom/facebook/ads/redexgen/X/ae;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wf;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Jy;

.field public A01:Lcom/facebook/ads/redexgen/X/D9;

.field public A02:Lcom/facebook/ads/redexgen/X/Co;

.field public A03:Lcom/facebook/ads/redexgen/X/CU;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/hy;

.field public final A06:Lcom/facebook/ads/redexgen/X/Mp;

.field public final A07:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A08:Lcom/facebook/ads/redexgen/X/Zv;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wh;

.field public final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 863
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OqBcBxPX2ZziMc2IT6MCTLtQAfN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zbHyi1ztTRv4YAmmT0P0cBLwkAbgbibY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SGCBgG4YDDdHsd7wreTLkUhlfmq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6SoBxKZAX5xZewPuDXqUB5F5Zi6ZkxRk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ec2XCBDA1LqSXAKcLbhR3N0Z6X2H9u1y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7uWZE4LuLIesc8VJARyN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MrB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uRKWJ0Ox"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jw;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jw;->A0M()V

    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0J:I

    .line 864
    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0I:I

    .line 865
    const/high16 v1, 0x42f00000    # 120.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0G:I

    .line 866
    const/high16 v1, 0x43000000    # 128.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0H:I

    .line 867
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0O:I

    .line 868
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0D:I

    .line 869
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0N:I

    .line 870
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0L:I

    .line 871
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0M:I

    .line 872
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0Q:I

    .line 873
    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0P:I

    .line 874
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0K:I

    .line 875
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0E:I

    .line 876
    sget v1, Lcom/facebook/ads/redexgen/X/Jw;->A0E:I

    .line 877
    const/16 v0, 0x5a

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jw;->A0F:I

    .line 878
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Z)V
    .locals 5

    .line 46893
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 46894
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A04:Landroid/os/Handler;

    .line 46895
    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46896
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 46897
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Wh;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    .line 46898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A06:Lcom/facebook/ads/redexgen/X/Mp;

    .line 46899
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jw;->A0J(Lcom/facebook/ads/redexgen/X/ai;)Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A08:Lcom/facebook/ads/redexgen/X/Zv;

    .line 46900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46901
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A08:Lcom/facebook/ads/redexgen/X/Zv;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setVisibility(I)V

    .line 46902
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46903
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A03()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46904
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jw;->A0K(Lcom/facebook/ads/redexgen/X/ai;)Lcom/facebook/ads/redexgen/X/Jy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    .line 46905
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v3

    .line 46906
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A07:Lcom/facebook/ads/redexgen/X/Xn;

    .line 46907
    if-eqz v3, :cond_2

    .line 46908
    const/4 v2, -0x1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46909
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Xm;->setPageDetailsVisible(Z)V

    .line 46910
    :cond_2
    return-void
.end method

.method private A0I()Landroid/widget/ImageView;
    .locals 5

    .line 46911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46912
    .local v0, "closeImageView":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0g:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 46913
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0C:I

    const/4 v1, 0x1

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46914
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46915
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46916
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 46917
    .local v3, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 46918
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 46919
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46920
    sget v3, Lcom/facebook/ads/redexgen/X/Jw;->A0K:I

    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0K:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jw;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0K:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46921
    new-instance v0, Lcom/facebook/ads/redexgen/X/aZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aZ;-><init>(Lcom/facebook/ads/redexgen/X/Jw;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46922
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46923
    .local v4, "closeButtonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0G:I

    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46924
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46925
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46926
    return-object v4
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/ai;)Lcom/facebook/ads/redexgen/X/Zv;
    .locals 6

    .line 46927
    const/4 v0, -0x2

    const/4 v1, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46928
    .local v0, "adDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46929
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46930
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46931
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/16 v1, 0xe

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46932
    sget-object v0, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v1

    .line 46933
    .local v1, "clickEvent":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A06:Lcom/facebook/ads/redexgen/X/Mp;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Jw;->A1P(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v3

    .line 46934
    .local v2, "detailsView":Lcom/facebook/ads/redexgen/X/Zv;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/a5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->A08(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 46935
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 46936
    const/16 v5, 0x64

    const/4 v2, 0x0

    const/16 v1, 0x190

    new-instance v0, Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {v0, v3, v1, v5, v2}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/CU;

    .line 46937
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 46938
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A00()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A0h(I)V

    .line 46939
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46940
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->A0g()V

    .line 46941
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46942
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46943
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46944
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)Z

    .line 46945
    return-object v3

    .line 46946
    :cond_2
    const/16 v2, 0x9

    const/16 v1, 0x25

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/ai;)Lcom/facebook/ads/redexgen/X/Jy;
    .locals 5

    .line 46947
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46948
    .local v0, "oldEndCardAdDetailsParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46949
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/16 v1, 0xe

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46950
    sget-object v3, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jw;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46951
    :cond_0
    const/16 v2, 0x9

    const/16 v1, 0x25

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46952
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jw;->A0C:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v0

    .line 46953
    .local v1, "clickEvent":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A06:Lcom/facebook/ads/redexgen/X/Mp;

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A1Q(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jy;

    move-result-object v3

    .line 46954
    .local v2, "oldEndCardAdDetailsView":Lcom/facebook/ads/redexgen/X/Jy;
    if-nez v3, :cond_2

    .line 46955
    const/4 v0, 0x0

    return-object v0

    .line 46956
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/a5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->A08(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 46957
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    .line 46958
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 46959
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 46960
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A00()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A0h(I)V

    .line 46961
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46962
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jy;->A0g()V

    .line 46963
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46964
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46965
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0B()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 46966
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0B()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46967
    :cond_4
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jy;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46968
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)Z

    .line 46969
    return-object v3
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jw;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x69

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x75t
        -0x60t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        0x3ct
        0x48t
        0x46t
        0x7t
        0x3ft
        0x3at
        0x3ct
        0x3et
        0x3bt
        0x48t
        0x48t
        0x44t
        0x7t
        0x3at
        0x3dt
        0x4ct
        0x7t
        0x42t
        0x47t
        0x4dt
        0x3et
        0x4bt
        0x4ct
        0x4dt
        0x42t
        0x4dt
        0x42t
        0x3at
        0x45t
        0x7t
        0x3ct
        0x45t
        0x42t
        0x3ct
        0x44t
        0x3et
        0x3dt
        0x40t
        0x4ct
        0x4at
        0xbt
        0x43t
        0x3et
        0x40t
        0x42t
        0x3ft
        0x4ct
        0x4ct
        0x48t
        0xbt
        0x3et
        0x41t
        0x50t
        0xbt
        0x46t
        0x4bt
        0x51t
        0x42t
        0x4ft
        0x50t
        0x51t
        0x46t
        0x51t
        0x46t
        0x3et
        0x49t
        0xbt
        0x43t
        0x46t
        0x4bt
        0x46t
        0x50t
        0x45t
        0x3ct
        0x3et
        0x40t
        0x51t
        0x46t
        0x53t
        0x46t
        0x51t
        0x56t
        0x17t
        0xat
        0x1ct
        0x6t
        0x17t
        0x9t
        0xat
        0x9t
        0x4t
        0x1bt
        0xet
        0x9t
        0xat
        0x14t
    .end array-data
.end method


# virtual methods
.method public A1B()V
    .locals 2

    .line 46970
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 46971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 46974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0L()Ljava/lang/String;

    move-result-object v0

    .line 46975
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WX;->A06(Lcom/facebook/ads/redexgen/X/cu;Ljava/lang/String;)V

    .line 46976
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A03()V

    .line 46977
    return-void
.end method

.method public A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 8

    .line 46978
    move-object v4, p2

    move-object p2, v4

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ae;->A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A08:Lcom/facebook/ads/redexgen/X/Zv;

    .line 46980
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    .line 46981
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 46982
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 46983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A09()Lcom/facebook/ads/redexgen/X/Wv;

    move-result-object v6

    .line 46984
    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 46985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    if-eqz v0, :cond_0

    .line 46986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    .line 46987
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    .line 46988
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 46989
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 46990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A09()Lcom/facebook/ads/redexgen/X/Wv;

    move-result-object v6

    .line 46991
    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Jy;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 46992
    :cond_0
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/Xm;)I
    .locals 1

    .line 46993
    if-nez p1, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Xm;->A00:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public abstract A1P(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zv;
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jy;
    .locals 1

    .line 46994
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1R()V
    .locals 10

    .line 46995
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getExpandableLayout()Landroid/view/View;

    move-result-object v6

    .line 46996
    .local v0, "expandableLayout":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 46997
    const/4 v9, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/D9;

    invoke-direct {v0, v9, v5}, Lcom/facebook/ads/redexgen/X/D9;-><init>(ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 46998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Lcom/facebook/ads/redexgen/X/Co;

    if-eqz v0, :cond_0

    .line 46999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Lcom/facebook/ads/redexgen/X/Co;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0L(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 47000
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v8

    .line 47001
    .local v1, "colors":Lcom/facebook/ads/redexgen/X/My;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 47002
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    .line 47003
    invoke-virtual {v8, v9}, Lcom/facebook/ads/redexgen/X/My;->A0A(Z)I

    move-result v2

    const/16 v7, 0x12c

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/CY;

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/facebook/ads/redexgen/X/CY;-><init>(Landroid/view/View;III)V

    .line 47004
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0L(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 47005
    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jw;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0D:I

    .line 47006
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 47007
    .local v4, "startDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v9}, Lcom/facebook/ads/redexgen/X/My;->A09(Z)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0D:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A05(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 47008
    .local v2, "endDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 47009
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47010
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0L(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 47011
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    const/16 v1, 0x96

    new-instance v0, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v0, v6, v1, v5}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0L(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 47012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0K(I)V

    .line 47013
    .end local v1    # "colors":Lcom/facebook/ads/redexgen/X/My;
    .end local v2    # "endDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public final A1S()V
    .locals 9

    .line 47014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47015
    .local v0, "rewardConfirmationLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47016
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47017
    .local v2, "rewardConfirmationParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47018
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47020
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47021
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47022
    const/16 v0, 0xf

    const/4 v7, 0x0

    invoke-static {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47023
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47024
    .local v3, "titleParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Jw;->A0O:I

    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jw;->A0O:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0O:I

    invoke-virtual {v6, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47025
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 47026
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47028
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    const v1, -0xce5db4

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0q:Lcom/facebook/ads/redexgen/X/XX;

    new-instance v3, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v3, v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Landroid/content/Context;IILcom/facebook/ads/redexgen/X/XX;)V

    .line 47029
    .local v1, "iconView":Lcom/facebook/ads/redexgen/X/aE;
    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0J:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0J:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47030
    .local v4, "iconParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47031
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/aE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47032
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47033
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47034
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;)V

    .line 47035
    return-void
.end method

.method public final A1T()V
    .locals 13

    .line 47036
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47037
    .local v8, "rewardConfirmationLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47038
    const/4 v3, -0x1

    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47039
    .local v9, "rewardConfirmationParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47040
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47041
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47042
    .local v10, "rewardGrantedTextView":Landroid/widget/TextView;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A18()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47043
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47044
    const/16 v0, 0x18

    invoke-static {v8, v9, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47045
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47046
    .local v11, "rewardGrantedTextParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/ae;->A0F:I

    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47047
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 47048
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47049
    nop

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 47050
    .local v12, "iconView":Lcom/facebook/ads/redexgen/X/aK;
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 47051
    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 47052
    sget v4, Lcom/facebook/ads/redexgen/X/Jw;->A0G:I

    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0G:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47053
    .local p0, "iconParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x11

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47054
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47055
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v4, v6, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    sget v2, Lcom/facebook/ads/redexgen/X/Jw;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jw;->A0G:I

    .line 47056
    invoke-virtual {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47057
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 47058
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47059
    .local p1, "rewardInfoTextView":Landroid/widget/TextView;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47060
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A19()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47061
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v2

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 47062
    invoke-static {v12, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47063
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47064
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47065
    invoke-static {v5, v7, v11}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47066
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47067
    .local p2, "rewardInfoTextParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/ae;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0D:I

    invoke-virtual {v4, v3, v2, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47068
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 47069
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47070
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47071
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47072
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47073
    invoke-virtual {v1, v10}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;)V

    .line 47074
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jw;->A0I()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;)V

    .line 47075
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47077
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47078
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47079
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v4

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v5

    sget-object v6, Lcom/facebook/ads/redexgen/X/Z5;->A05:Lcom/facebook/ads/redexgen/X/Z5;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47081
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v7

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/Jw;->A04:Landroid/os/Handler;

    .line 47082
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/ae;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Xn;Landroid/os/Handler;)Landroid/widget/ImageView;

    move-result-object v0

    .line 47083
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;)V

    .line 47084
    :cond_0
    return-void
.end method

.method public final A1U(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 47085
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/KL;

    if-eqz v0, :cond_2

    .line 47086
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5r;

    if-nez v0, :cond_0

    .line 47087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5q;

    if-eqz v0, :cond_1

    .line 47088
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47089
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47090
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 47091
    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47092
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Zv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47094
    .end local v0    # "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Zv;->A0h(I)V

    .line 47095
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KL;

    .line 47096
    invoke-virtual {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0s(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V

    .line 47097
    :cond_2
    return-void

    .line 47098
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Jw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final synthetic A1V(Landroid/view/View;)V
    .locals 4

    .line 47099
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jw;->A07:Lcom/facebook/ads/redexgen/X/Xn;

    const/16 v2, 0x2e

    const/16 v1, 0x2d

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 47100
    return-void
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;
    .locals 1

    .line 47101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    return-object v0
.end method

.method public getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/CU;
    .locals 1

    .line 47102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/CU;

    return-object v0
.end method

.method public getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;
    .locals 1

    .line 47103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A08:Lcom/facebook/ads/redexgen/X/Zv;

    return-object v0
.end method

.method public getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;
    .locals 1

    .line 47104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A06:Lcom/facebook/ads/redexgen/X/Mp;

    return-object v0
.end method

.method public getAnimationPlugin()Lcom/facebook/ads/redexgen/X/D9;
    .locals 1

    .line 47105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    return-object v0
.end method

.method public getOldEndCardAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;
    .locals 1

    .line 47106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47108
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A0i()V

    .line 47110
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jy;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 47111
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ae;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47113
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47114
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47116
    :cond_0
    return-void

    .line 47117
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A0h(I)V

    .line 47118
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 47119
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ae;->onLayout(ZIIII)V

    .line 47120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47121
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 47122
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47123
    .end local v0
    :cond_0
    return-void

    .line 47124
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getExpandableLayout()Landroid/view/View;

    move-result-object v4

    .line 47125
    .local v0, "expandableLayout":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 47126
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Lcom/facebook/ads/redexgen/X/Co;

    if-nez v0, :cond_2

    .line 47127
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x12c

    new-instance v0, Lcom/facebook/ads/redexgen/X/Co;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Co;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Lcom/facebook/ads/redexgen/X/Co;

    .line 47128
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Lcom/facebook/ads/redexgen/X/Co;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0L(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 47129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Lcom/facebook/ads/redexgen/X/D9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D9;->A0J()V

    .line 47130
    :cond_2
    return-void
.end method
