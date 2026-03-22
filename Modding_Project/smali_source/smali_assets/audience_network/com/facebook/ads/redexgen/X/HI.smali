.class public abstract Lcom/facebook/ads/redexgen/X/HI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/l6;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 0

    .line 39328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HI;->A00:Lcom/facebook/ads/redexgen/X/H1;

    .line 39330
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/4J;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 39331
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/HI;->A0B(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->A0C(Lcom/facebook/ads/redexgen/X/4J;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/4J;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/4J;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation
.end method
