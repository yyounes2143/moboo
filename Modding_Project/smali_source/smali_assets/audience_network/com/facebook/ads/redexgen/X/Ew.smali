.class public final Lcom/facebook/ads/redexgen/X/Ew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cn;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ev;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/cn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35338
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACO()V
    .locals 1

    .line 35339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 35340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A03(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 35341
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A04(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 35342
    return-void
.end method
