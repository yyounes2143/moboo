.class public final Lcom/facebook/ads/redexgen/X/ph;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewProperties"
.end annotation


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/pl;

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ph;->A03:Ljava/util/List;

    .line 103023
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ph;->A02:Landroid/graphics/Rect;

    .line 103024
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A02:Lcom/facebook/ads/redexgen/X/pl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ph;->A01:Lcom/facebook/ads/redexgen/X/pl;

    .line 103025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ph;->A00:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;
    .locals 0

    .line 103026
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ph;->A02:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ph;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 0

    .line 103027
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ph;->A01:Lcom/facebook/ads/redexgen/X/pl;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ph;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 0

    .line 103028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ph;->A01:Lcom/facebook/ads/redexgen/X/pl;

    return-object p1
.end method

.method public static A03(J)Lcom/facebook/ads/redexgen/X/ph;
    .locals 1

    .line 103029
    new-instance v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ph;-><init>()V

    .line 103030
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    iput-wide p0, v0, Lcom/facebook/ads/redexgen/X/ph;->A00:J

    .line 103031
    return-object v0
.end method

.method public static synthetic A04(J)Lcom/facebook/ads/redexgen/X/ph;
    .locals 0

    .line 103032
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/ph;->A03(J)Lcom/facebook/ads/redexgen/X/ph;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;
    .locals 0

    .line 103033
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ph;->A03:Ljava/util/List;

    return-object p0
.end method
