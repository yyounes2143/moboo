.class public final Lcom/facebook/ads/redexgen/X/go;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nl;->A03(Lcom/facebook/ads/redexgen/X/cu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 0

    .line 83709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 83710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/cu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Nk;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/UA;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83711
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nk;->A0B(Z)V

    .line 83712
    return-void
.end method
