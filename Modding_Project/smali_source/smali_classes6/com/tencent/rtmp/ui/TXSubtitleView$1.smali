.class final Lcom/tencent/rtmp/ui/TXSubtitleView$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/ui/TXSubtitleView;->show(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/tencent/rtmp/ui/TXSubtitleView;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/ui/TXSubtitleView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXSubtitleView$1;->b:Lcom/tencent/rtmp/ui/TXSubtitleView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXSubtitleView$1;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXSubtitleView$1;->b:Lcom/tencent/rtmp/ui/TXSubtitleView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXSubtitleView;->access$000(Lcom/tencent/rtmp/ui/TXSubtitleView;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXSubtitleView$1;->a:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
