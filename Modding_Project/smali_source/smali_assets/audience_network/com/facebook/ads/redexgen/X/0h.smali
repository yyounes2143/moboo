.class public Lcom/facebook/ads/redexgen/X/0h;
.super Lcom/facebook/ads/redexgen/X/6g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xu;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 15
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4mrgyhu5NuMSfoRJ7wvth"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Meba3O6SWeMBrZzPyfP10SBJe7jX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YOQh7xYBrfW2123ECT3lDkRgUFpenV07"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JuO7BKBrPjkMVs4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0h;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 5030
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6g;-><init>(Landroid/content/Context;)V

    .line 5031
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0h;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 5032
    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 5039
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/gI;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Landroid/content/Context;IZ)V

    .line 5040
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/gI;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 5041
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1T(Z)V

    .line 5042
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/6g;->setLayoutManager(Lcom/facebook/ads/redexgen/X/QO;)V

    .line 5043
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/FG;
    .locals 4

    .line 5033
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 5034
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    const/4 v0, 0x0

    return-object v0

    .line 5035
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0h;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0h;->A00:[Ljava/lang/String;

    const-string v1, "XAsjP5XwQSgGjSaOGRXjEIyXW47w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;
    .locals 1

    .line 5036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0h;->getLayoutManager()Lcom/facebook/ads/redexgen/X/gI;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/gI;
    .locals 1

    .line 5037
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gI;

    return-object v0
.end method

.method public getOnScrollListener()Lcom/facebook/ads/redexgen/X/QT;
    .locals 1

    .line 5038
    new-instance v0, Lcom/facebook/ads/redexgen/X/OC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OC;-><init>(Lcom/facebook/ads/redexgen/X/0h;)V

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 0

    .line 5044
    return-void
.end method
