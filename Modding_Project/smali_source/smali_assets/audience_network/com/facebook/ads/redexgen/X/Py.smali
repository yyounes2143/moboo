.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/6g;

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 58750
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A04:Z

    .line 58751
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A02:I

    .line 58752
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:I

    .line 58753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 58754
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A01:I

    .line 58755
    return-void
.end method
