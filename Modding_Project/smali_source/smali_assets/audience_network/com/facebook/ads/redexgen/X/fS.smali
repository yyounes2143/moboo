.class public final Lcom/facebook/ads/redexgen/X/fS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fR;->A01()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fR;)V
    .locals 0

    .line 80968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fS;->A00:Lcom/facebook/ads/redexgen/X/fR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACh()V
    .locals 1

    .line 80969
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 80970
    return-void
.end method

.method public final ACq()V
    .locals 1

    .line 80971
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 80972
    return-void
.end method
