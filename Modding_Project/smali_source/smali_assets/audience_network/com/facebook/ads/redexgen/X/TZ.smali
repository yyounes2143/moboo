.class public final Lcom/facebook/ads/redexgen/X/TZ;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ta;->A00()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ta;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ta;)V
    .locals 0

    .line 66058
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 66059
    sget v0, Lcom/facebook/ads/redexgen/X/Sv;->A2j:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0D(I)V

    .line 66060
    const/4 v0, 0x1

    return v0
.end method
