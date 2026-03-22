.class public final Lcom/facebook/ads/redexgen/X/G0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Fy;->A0A(ZI)Lcom/facebook/ads/redexgen/X/Hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Fy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fy;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36881
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABr()V
    .locals 1

    .line 36882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0P(Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 36883
    return-void
.end method

.method public final ACZ()V
    .locals 3

    .line 36884
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0T(Lcom/facebook/ads/redexgen/X/Fy;ZI)V

    .line 36885
    return-void
.end method

.method public final ACy(I)V
    .locals 1

    .line 36886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A02(Lcom/facebook/ads/redexgen/X/Fy;I)I

    .line 36887
    return-void
.end method

.method public final ADI(F)V
    .locals 1

    .line 36888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0a(Lcom/facebook/ads/redexgen/X/Fy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0Q(Lcom/facebook/ads/redexgen/X/Fy;F)V

    .line 36890
    :cond_0
    return-void
.end method

.method public final AFE(Z)V
    .locals 1

    .line 36891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0S(Lcom/facebook/ads/redexgen/X/Fy;Z)V

    .line 36892
    return-void
.end method

.method public final AFg(Ljava/lang/String;)V
    .locals 2

    .line 36893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A03(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->A3S(Ljava/lang/String;)V

    .line 36894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A07(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A08(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 36895
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0R(Lcom/facebook/ads/redexgen/X/Fy;I)V

    .line 36896
    return-void
.end method

.method public final AJr()V
    .locals 2

    .line 36897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A06(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 36899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A06(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36900
    return-void
.end method

.method public final AJs(F)V
    .locals 2

    .line 36901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A06(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    .line 36902
    return-void
.end method
