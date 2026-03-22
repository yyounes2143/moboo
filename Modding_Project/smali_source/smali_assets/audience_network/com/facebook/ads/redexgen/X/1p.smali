.class public abstract Lcom/facebook/ads/redexgen/X/1p;
.super Lcom/facebook/ads/redexgen/X/BZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FastMatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8958
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BZ;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A44(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "character"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8959
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BZ;->A0A(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
