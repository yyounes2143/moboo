.class public final Lcom/facebook/ads/redexgen/X/JR;
.super Lcom/facebook/ads/redexgen/X/ae;
.source ""


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;

.field public static final A0X:I

.field public static final A0Y:I

.field public static final A0Z:I

.field public static final A0a:I

.field public static final A0b:I

.field public static final A0c:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Landroid/widget/ImageView;

.field public A05:Landroid/widget/LinearLayout;

.field public A06:Lcom/facebook/ads/redexgen/X/O2;

.field public A07:Lcom/facebook/ads/redexgen/X/ce;

.field public A08:Lcom/facebook/ads/redexgen/X/EG;

.field public A09:Lcom/facebook/ads/redexgen/X/3i;

.field public final A0A:Landroid/os/Handler;

.field public final A0B:Landroid/widget/ImageView;

.field public final A0C:Landroid/widget/RelativeLayout;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/RelativeLayout;

.field public final A0G:Landroid/widget/RelativeLayout;

.field public final A0H:Landroid/widget/TextView;

.field public final A0I:Landroid/widget/TextView;

.field public final A0J:Landroid/widget/TextView;

.field public final A0K:Landroid/widget/TextView;

.field public final A0L:Landroid/widget/TextView;

.field public final A0M:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0N:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0O:Lcom/facebook/ads/redexgen/X/aK;

.field public final A0P:Lcom/facebook/ads/redexgen/X/aM;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/ai;

.field public final A0R:Lcom/facebook/ads/redexgen/X/E1;

.field public final A0S:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0T:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0U:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 807
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UQ7TFs74lcUdZuEisIQQex1S2hJkyBQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "myvpLMPCiy1Db21mRiA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GFipZK8NVLufipAPgP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AfraUSEhnPTRS4j1c1sVruXnc5XHPJ9d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5o2PCnXzYQrRDOC9DPzRLQmHH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zC9Q5dVrf3DuizGN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cBKGhAcqgckkizLMVTE8MrLSp3snJrYL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vsEAc6f0BLlcSapFKHSSbJlGpIzpiVSU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JR;->A0Q()V

    const/high16 v1, 0x42000000    # 32.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0X:I

    .line 808
    const/high16 v1, 0x42180000    # 38.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    .line 809
    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0Z:I

    .line 810
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0a:I

    .line 811
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0b:I

    .line 812
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/JR;->A0c:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;)V
    .locals 5

    .line 44283
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 44284
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0A:Landroid/os/Handler;

    .line 44285
    new-instance v0, Lcom/facebook/ads/redexgen/X/5a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5a;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0T:Lcom/facebook/ads/redexgen/X/DP;

    .line 44286
    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0S:Lcom/facebook/ads/redexgen/X/DX;

    .line 44287
    new-instance v0, Lcom/facebook/ads/redexgen/X/bD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bD;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0U:Ljava/lang/Runnable;

    .line 44288
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    .line 44289
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44291
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0N:Lcom/facebook/ads/redexgen/X/Ua;

    .line 44292
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0N:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0f:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 44293
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 44294
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    .line 44295
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    .line 44296
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0G()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    .line 44297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v1

    .line 44299
    .local v2, "videoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 44300
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 44301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0T:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0S:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 44302
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A06()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    .line 44303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44304
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0L()V

    .line 44305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0D()Lcom/facebook/ads/redexgen/X/aK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    .line 44306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44307
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0B()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    .line 44308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44309
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0E()Lcom/facebook/ads/redexgen/X/aM;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    .line 44310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44311
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A09()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0I:Landroid/widget/TextView;

    .line 44312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0I:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44313
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A01()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0B:Landroid/widget/ImageView;

    .line 44314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0B:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44315
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A08()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0H:Landroid/widget/TextView;

    .line 44316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0H:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44317
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A05()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0D:Landroid/widget/RelativeLayout;

    .line 44318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44319
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    .line 44320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44321
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0A()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    .line 44322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44323
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0C()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    .line 44324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44325
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getWatchAdCtaText()Ljava/lang/String;

    move-result-object v1

    const v0, 0x26ffffff

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    .line 44326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44328
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A14()Ljava/lang/String;

    move-result-object v1

    .line 44329
    const v0, -0xf79901

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    .line 44330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44332
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44333
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    .line 44334
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 44335
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 44336
    .local v0, "orientation":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/JR;->A0f(I)V

    .line 44337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44338
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/JR;->A0R(I)V

    .line 44339
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0K()V

    .line 44340
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/os/Handler;
    .locals 0

    .line 44341
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0A:Landroid/os/Handler;

    return-object p0
.end method

.method private A01()Landroid/widget/ImageView;
    .locals 3

    .line 44342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44343
    .local v0, "appDownloadIconView":Landroid/widget/ImageView;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44344
    .local v1, "appDownloadIconViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44345
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0S:Lcom/facebook/ads/redexgen/X/XX;

    .line 44346
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44347
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44348
    return-object v2
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JR;)Landroid/widget/ImageView;
    .locals 0

    .line 44349
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    return-object p0
.end method

.method private A03()Landroid/widget/LinearLayout;
    .locals 4

    .line 44350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    .line 44351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    .line 44352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44353
    .local v0, "adReportingLayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A07:Lcom/facebook/ads/redexgen/X/XX;

    .line 44355
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44356
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44359
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A08:Lcom/facebook/ads/redexgen/X/XX;

    .line 44360
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44361
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44363
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44364
    .local v1, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44365
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44366
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44367
    return-object v2
.end method

.method private A04()Landroid/widget/RelativeLayout;
    .locals 5

    .line 44368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44369
    .local v0, "adInfoContainer":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0I:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44373
    :goto_0
    return-object v4

    .line 44374
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JR;->A0D:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "DGMgcqNKmRBhEzUZj1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "QbI2wW46F5loixSEU5hnRqKbb5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()Landroid/widget/RelativeLayout;
    .locals 3

    .line 44375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44376
    .local v0, "appDownloadContainer":Landroid/widget/RelativeLayout;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44377
    .local v1, "appDownloadContainerParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0B:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0H:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44380
    return-object v2
.end method

.method private A06()Landroid/widget/RelativeLayout;
    .locals 4

    .line 44381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44382
    .local v0, "secondaryLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44383
    .local v1, "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44384
    return-object v3
.end method

.method private A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;
    .locals 5

    .line 44385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44386
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v3, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 44387
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44388
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44389
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 44390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44391
    .local v1, "contentTextView":Landroid/widget/TextView;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44392
    .local v2, "contentTextViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44393
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44394
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44395
    const/4 v0, 0x1

    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 44396
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44397
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44398
    return-object v4
.end method

.method private A08()Landroid/widget/TextView;
    .locals 2

    .line 44399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44400
    .local v0, "appDownloadTextView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44401
    const v0, -0x7f000001

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44402
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44403
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44404
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44405
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44406
    return-object v1
.end method

.method private A09()Landroid/widget/TextView;
    .locals 2

    .line 44407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44408
    .local v0, "ratingView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getRatingText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44409
    const v0, -0x7f000001

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44410
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44411
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44412
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44413
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44414
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 44415
    return-object v1
.end method

.method private A0A()Landroid/widget/TextView;
    .locals 6

    .line 44416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44417
    .local v0, "rewardInfoView":Landroid/widget/TextView;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44418
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A15()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44419
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 44420
    invoke-static {v5, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44421
    .local v1, "rewardInfoText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44422
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44423
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44424
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44425
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44426
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44427
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 44428
    return-object v3
.end method

.method private A0B()Landroid/widget/TextView;
    .locals 2

    .line 44429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44430
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44431
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44432
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44433
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44434
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44435
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44436
    return-object v1
.end method

.method private A0C()Landroid/widget/TextView;
    .locals 2

    .line 44437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44438
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getWatchAdCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44439
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44440
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44441
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44442
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44443
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44444
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 44445
    return-object v1
.end method

.method private A0D()Lcom/facebook/ads/redexgen/X/aK;
    .locals 4

    .line 44446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 44447
    .local v0, "iconView":Lcom/facebook/ads/redexgen/X/aK;
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 44448
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v1, v0

    const v0, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 44449
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 44450
    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 44452
    return-object v3
.end method

.method private A0E()Lcom/facebook/ads/redexgen/X/aM;
    .locals 7

    .line 44453
    new-instance v1, Lcom/facebook/ads/redexgen/X/aM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    sget v3, Lcom/facebook/ads/redexgen/X/JR;->A0c:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x5

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/aM;-><init>(Lcom/facebook/ads/redexgen/X/dL;IIII)V

    .line 44454
    .local v0, "startRatingContainer":Lcom/facebook/ads/redexgen/X/aM;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getRating()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aM;->setRating(F)V

    .line 44455
    return-object v1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/JR;)Lcom/facebook/ads/redexgen/X/ce;
    .locals 0

    .line 44456
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:Lcom/facebook/ads/redexgen/X/ce;

    return-object p0
.end method

.method private A0G()Lcom/facebook/ads/redexgen/X/E1;
    .locals 11

    .line 44457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/E1;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 44458
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/E1;
    new-instance v1, Lcom/facebook/ads/redexgen/X/3i;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    .line 44459
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44460
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;IIZLandroid/os/Bundle;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    .line 44461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44462
    new-instance v1, Lcom/facebook/ads/redexgen/X/EG;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    .line 44463
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44464
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/EG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Dc;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A08:Lcom/facebook/ads/redexgen/X/EG;

    .line 44465
    :goto_0
    const/high16 v0, 0x42300000    # 44.0f

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/E1;->setRoundedCornerVideoView(F)V

    .line 44466
    return-object v4

    .line 44467
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "hx8qxgvoIW6xceGAWf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wYZsMrXjcXuhFUuKsEl8E0dQOo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/JR;->A08:Lcom/facebook/ads/redexgen/X/EG;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/JR;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 44468
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/JR;)Ljava/lang/Runnable;
    .locals 0

    .line 44469
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0U:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JR;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0K()V
    .locals 2

    .line 44470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bF;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44472
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bG;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44473
    :goto_0
    return-void

    .line 44474
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bH;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A0L()V
    .locals 7

    .line 44475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JR;->A0N:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Z5;->A04:Lcom/facebook/ads/redexgen/X/Z5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44478
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/JR;->A0A:Landroid/os/Handler;

    .line 44479
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/ae;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Xn;Landroid/os/Handler;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    .line 44480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44481
    :cond_0
    :goto_0
    return-void

    .line 44482
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A06:Lcom/facebook/ads/redexgen/X/O2;

    .line 44484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A03()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    .line 44485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 44486
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0N()V

    goto :goto_0
.end method

.method private A0M()V
    .locals 3

    .line 44487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getRating()F

    move-result v2

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    .line 44488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aM;->setVisibility(I)V

    .line 44491
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44495
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44496
    return-void
.end method

.method private A0N()V
    .locals 2

    .line 44497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 44498
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bE;-><init>(Lcom/facebook/ads/redexgen/X/JR;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44499
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0S(I)V

    .line 44500
    return-void
.end method

.method private A0O()V
    .locals 5

    .line 44501
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0N:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0A:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 44502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v4

    .line 44503
    .local v0, "pageDetails":Lcom/facebook/ads/redexgen/X/N9;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A06:Lcom/facebook/ads/redexgen/X/O2;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A06:Lcom/facebook/ads/redexgen/X/O2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    .line 44504
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44506
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44507
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Xn;->AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    .line 44508
    :cond_0
    :goto_0
    return-void

    .line 44509
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44510
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JR;->A0M:Lcom/facebook/ads/redexgen/X/dL;

    .line 44511
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44512
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 44513
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private A0P()V
    .locals 3

    .line 44514
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44515
    .local v0, "appDownloadTextParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44516
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0B:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44517
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44519
    return-void
.end method

.method public static A0Q()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JR;->A0V:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        0x1at
        0x29t
        0x3ct
        0x31t
        0x36t
        0x2ft
        -0x4dt
        -0x44t
        -0x41t
        -0xct
    .end array-data
.end method

.method private A0R(I)V
    .locals 3

    .line 44520
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 44521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 44528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44529
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44531
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 44532
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44537
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 44539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    .line 44540
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 44541
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 44542
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "keLlcznYvctfEvjur1LzpEy2BPaBqrBv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SZjrRhAKecjSc6vp3MPbWHckPYKJoG5j"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 44543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44544
    :cond_6
    return-void
.end method

.method private A0S(I)V
    .locals 2

    .line 44545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 44546
    :cond_0
    return-void

    .line 44547
    :cond_1
    if-nez p1, :cond_2

    .line 44548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44550
    :goto_0
    return-void

    .line 44551
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private A0T(I)V
    .locals 3

    .line 44553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 44554
    return-void

    .line 44555
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    .line 44556
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44557
    .local v0, "adChoiceLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44558
    sget v1, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    .line 44559
    .local v1, "rightMargin":I
    .restart local v1    # "rightMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44561
    return-void

    .line 44562
    .end local v1    # "rightMargin":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_0
.end method

.method private A0U(I)V
    .locals 4

    .line 44563
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44564
    .local v0, "adInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 44565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 44566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44567
    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44568
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44569
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44570
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0M()V

    .line 44571
    return-void

    .line 44572
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 44573
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44574
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A0V(I)V
    .locals 3

    .line 44575
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44576
    .local v0, "appDownloadContainerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44577
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0E:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44578
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 44579
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44580
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44581
    return-void
.end method

.method private A0W(I)V
    .locals 4

    .line 44582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 44583
    return-void

    .line 44584
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    .line 44585
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44586
    .local v0, "creditLineViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    .line 44587
    .local v1, "leftMargin":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44588
    sget v2, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    .line 44589
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44590
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44591
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44593
    return-void
.end method

.method private A0X(I)V
    .locals 8

    .line 44594
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 44595
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v1, v0

    const v0, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v0

    float-to-int v5, v1

    .line 44596
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44597
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v6, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "T7WF8ct6Ecp3fFl6k8FlzT3xp8EZwOPe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "49nlYj8CnceEqKl67yYD9azFmPqqLBPu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/aK;->setVisibility(I)V

    .line 44598
    :goto_0
    const/4 v6, 0x0

    .line 44599
    .local v3, "topMargin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44600
    .local v4, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-ne p1, v3, :cond_0

    .line 44601
    neg-int v0, v5

    div-int/lit8 v6, v0, 0x2

    .line 44602
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44604
    :cond_0
    invoke-virtual {v2, v4, v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44606
    return-void

    .line 44607
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    goto :goto_0

    .line 44608
    .end local v2    # "size":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v0

    float-to-int v5, v1

    .line 44609
    .restart local v2    # "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 44610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aK;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Y(I)V
    .locals 3

    .line 44611
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44612
    .local v0, "starRatingContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44613
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 44614
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    .line 44615
    .local v1, "topMargin":I
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44616
    .restart local v1    # "topMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aM;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aM;->setItemSpacing(I)V

    .line 44619
    return-void

    .line 44620
    .end local v1    # "topMargin":I
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0E:I

    goto :goto_0
.end method

.method private A0Z(I)V
    .locals 4

    .line 44621
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44622
    .local v0, "ratingParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0P:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aM;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44623
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 44624
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    .line 44625
    .local v2, "topMargin":I
    .restart local v2    # "topMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44626
    if-ne p1, v2, :cond_0

    .line 44627
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44628
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44629
    return-void

    .line 44630
    .end local v2    # "topMargin":I
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0E:I

    goto :goto_0
.end method

.method private A0a(I)V
    .locals 5

    .line 44631
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44632
    .local v0, "rewardInfoTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44633
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 44634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44635
    sget v2, Lcom/facebook/ads/redexgen/X/JR;->A0a:I

    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/JR;->A0a:I

    invoke-virtual {v4, v2, v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44636
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44637
    return-void

    .line 44638
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44639
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0C:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0b(I)V
    .locals 5

    .line 44640
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 44641
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44642
    .local v0, "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0h()D

    move-result-wide v3

    .line 44644
    .local v1, "aspectRatio":D
    double-to-float v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0V(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getId()I

    move-result v1

    const/4 v0, 0x6

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44646
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 44647
    .local v3, "rightMargin":I
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44648
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44651
    .end local v0    # "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "aspectRatio":D
    .end local v3    # "rightMargin":I
    :cond_0
    return-void

    .line 44652
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private A0c(I)V
    .locals 6

    .line 44653
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44654
    .local v0, "skipToInstallButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_1

    .line 44655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44656
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    .line 44657
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0C:I

    .line 44658
    .local v3, "bottomMargin":I
    .restart local v3    # "bottomMargin":I
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    invoke-virtual {v3, v1, v5, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44659
    const/4 v1, 0x2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44660
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "bottomMargin":I
    .end local v1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44661
    return-void

    .line 44662
    .end local v1
    .end local v3
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    .line 44663
    .restart local v1    # "view":Landroid/view/View;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    goto :goto_0

    .line 44664
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/JR;->A0X:I

    .line 44665
    .local v1, "topMargin":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44666
    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A0D:I

    .line 44667
    :cond_2
    invoke-virtual {v3, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private A0d(I)V
    .locals 4

    .line 44669
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44670
    .local v0, "titleTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 44671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 44672
    sget v2, Lcom/facebook/ads/redexgen/X/JR;->A0Z:I

    sget v1, Lcom/facebook/ads/redexgen/X/JR;->A0Z:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44673
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44674
    return-void

    .line 44675
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0K:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method private A0e(I)V
    .locals 10

    .line 44676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0h()D

    move-result-wide v2

    .line 44677
    .local v0, "aspectRatio":D
    const/4 v7, 0x0

    .line 44678
    .local v2, "leftMargin":I
    const/4 v4, 0x0

    .line 44679
    .local v3, "rightMargin":I
    const/4 v6, 0x0

    .line 44680
    .local v4, "topMargin":I
    const/4 v0, 0x1

    const/4 v5, -0x2

    const v1, 0x3e4ccccd    # 0.2f

    const v9, 0x3dcccccd    # 0.1f

    if-ne p1, v0, :cond_5

    .line 44681
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0V(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44682
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44683
    .end local v7
    :cond_1
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0U(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44684
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 44685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .restart local v7
    goto :goto_0

    .line 44686
    .end local v7
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 44687
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    int-to-float v3, v0

    const v8, 0x3ecccccd    # 0.4f

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "VrmCvLPumx9qmsQ5AqX8D26sv2xEwmDs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "M5pl3CqSLX5dAxkk9LSq9NmEjnkhG5Xr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "itXi3sFkhsJNNNlf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "UwAjH2H8fcKmgRPVcHr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    goto :goto_0

    .line 44688
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "r4F6E4irn5aDyLCCoL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HLlNT1vJDSE83AAt2A8wGZErAg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .local v7, "videoHeight":I
    move v6, v3

    .line 44689
    .restart local v7    # "videoHeight":I
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44690
    .end local v7    # "videoHeight":I
    .local v5, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 44691
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0T(F)Z

    move-result v0

    const v8, 0x3e19999a    # 0.15f

    if-eqz v0, :cond_7

    .line 44692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 44693
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 44694
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 44695
    .local v5, "videoWidth":I
    .restart local v5    # "videoWidth":I
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44696
    .local v5, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44697
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 44698
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44699
    :goto_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44700
    return-void

    .line 44701
    :cond_6
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 44702
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0V(F)Z

    move-result v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v4, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "ZplkNnpiZffIY1LttQt1XVs2T7MKHARy"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "uFxfhHDbtwTjfaa8IDnniTCsCIFPOnZP"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-eqz v7, :cond_8

    .line 44703
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    move v7, v4

    .line 44704
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .restart local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 44705
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0U(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44706
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    .line 44707
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 44708
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .restart local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 44709
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    .line 44710
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 44711
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v1, v0

    const v0, 0x3e5c28f6    # 0.215f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_1
.end method

.method private A0f(I)V
    .locals 3

    .line 44712
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 44713
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    .line 44714
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    .line 44715
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0b(I)V

    .line 44716
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0e(I)V

    .line 44717
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0X(I)V

    .line 44718
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0d(I)V

    .line 44719
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0Z(I)V

    .line 44720
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0P()V

    .line 44721
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0V(I)V

    .line 44722
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0Y(I)V

    .line 44723
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0U(I)V

    .line 44724
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0a(I)V

    .line 44725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44726
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0h(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 44727
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "aYm4mmhUzY2q09M7FsCiyOSpkxFbKaZW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "02gWjTBSQrtOfJ7daRHeBoWCiPeJp89r"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0T(I)V

    .line 44728
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0W(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 44729
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "tL7wIN5OEPzS4IRzlt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pnOaA9DlQTYkC3KVcwnBrIvrHl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0c(I)V

    .line 44730
    return-void

    .line 44731
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0g(I)V

    goto :goto_0

    .line 44732
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "MDf5St22kcgabUjosByBKwB24Lkknw12"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UByTvfFM4cGo3K13JgxsnaHo1RTqGnlv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0c(I)V

    .line 44733
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0g(I)V
    .locals 6

    .line 44734
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44735
    .local v0, "watchAdButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 44736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 44737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44738
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    .line 44739
    .local v1, "bottomMargin":I
    .restart local v1    # "bottomMargin":I
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/JR;->A0Y:I

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44740
    .end local v1    # "bottomMargin":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44741
    return-void

    .line 44742
    .end local v1
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44743
    sget v2, Lcom/facebook/ads/redexgen/X/JR;->A0a:I

    goto :goto_0

    .line 44744
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44745
    sget v5, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "xJXeUykDDwk7QxqpMI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KNHMaHGzFmfIejDiEBJDCMbgtc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0h(I)V
    .locals 5

    .line 44746
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44747
    .local v0, "watchAdTextParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 44748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 44749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44750
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0D:I

    .line 44751
    .local v1, "bottomMargin":I
    .restart local v1    # "bottomMargin":I
    :goto_0
    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44752
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44753
    .end local v1    # "bottomMargin":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44754
    return-void

    .line 44755
    .end local v1
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44756
    sget v0, Lcom/facebook/ads/redexgen/X/JR;->A0a:I

    goto :goto_0

    .line 44757
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44759
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/JR;)V
    .locals 0

    .line 44760
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->A0O()V

    return-void
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/JR;I)V
    .locals 0

    .line 44761
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JR;->A0S(I)V

    return-void
.end method

.method private getRating()F
    .locals 1

    .line 44776
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44777
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 44778
    .local v0, "rating":F
    return v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44779
    .end local v0    # "rating":F
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getRatingText()Ljava/lang/String;
    .locals 5

    .line 44780
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JR;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44781
    .local v0, "ratingText":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWatchAdCtaText()Ljava/lang/String;
    .locals 5

    .line 44782
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44783
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A16()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0Q:Lcom/facebook/ads/redexgen/X/ai;

    .line 44784
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 44785
    invoke-static {v4, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 1

    .line 44762
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0
.end method

.method public final A1B()V
    .locals 5

    .line 44763
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 44764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A08:Lcom/facebook/ads/redexgen/X/EG;

    if-eqz v0, :cond_0

    .line 44765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A08:Lcom/facebook/ads/redexgen/X/EG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EG;->A07()V

    .line 44766
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A0W:[Ljava/lang/String;

    const-string v1, "tdEFFGfq1cVEZpxqy9rgZPT1BZ8plSyJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "YynlqIxuvciXAw4AWnNfF7pWFOOJrehC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 44767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0p()V

    .line 44768
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0A:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 44769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0R:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0T:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0S:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 44770
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:Lcom/facebook/ads/redexgen/X/ce;

    .line 44771
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1M()Z
    .locals 1

    .line 44772
    const/4 v0, 0x1

    return v0
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 1

    .line 44773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    .line 44774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A09:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dc;->A0o(Lcom/facebook/ads/redexgen/X/Dc;)V

    .line 44775
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 44786
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ae;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44787
    const/16 v0, 0x9

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0O:Lcom/facebook/ads/redexgen/X/aK;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0C:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0J:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0E:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0G:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0L:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A0F:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 44788
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0f(I)V

    .line 44789
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0R(I)V

    .line 44790
    return-void
.end method

.method public setVideoAdViewListener(Lcom/facebook/ads/redexgen/X/ce;)V
    .locals 0

    .line 44791
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:Lcom/facebook/ads/redexgen/X/ce;

    .line 44792
    return-void
.end method
