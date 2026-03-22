.class public final Lcom/facebook/ads/redexgen/X/X8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Wt;->A05(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Sh;Lcom/facebook/ads/redexgen/X/ed;)Lcom/facebook/ads/redexgen/X/Bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cu;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72004
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:Lcom/facebook/ads/redexgen/X/VR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7r()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72005
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:Lcom/facebook/ads/redexgen/X/VR;

    .line 72006
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TY;->A00()Lcom/facebook/ads/redexgen/X/TY;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:Lcom/facebook/ads/redexgen/X/cu;

    .line 72007
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TY;->A01(Lcom/facebook/ads/redexgen/X/SQ;Z)Lcom/facebook/ads/redexgen/X/Wb;

    move-result-object v0

    .line 72008
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wb;->A06()Ljava/util/Map;

    move-result-object v0

    .line 72009
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/VR;->A0A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
