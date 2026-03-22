.class public final Lcom/facebook/ads/redexgen/X/QJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59115
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Qg;I)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 2

    .line 59116
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    .line 59117
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    .line 59118
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    .line 59119
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A02:I

    .line 59120
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:I

    .line 59121
    return-object p0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/Qg;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 1

    .line 59122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(Lcom/facebook/ads/redexgen/X/Qg;I)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    return-object v0
.end method
