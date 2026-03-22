.class final synthetic Lcom/tencent/rtmp/ui/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/rtmp/ui/c;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/rtmp/ui/c;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/rtmp/ui/c;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tencent/rtmp/ui/c;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/tencent/rtmp/ui/c;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)Ljava/lang/Runnable;
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/rtmp/ui/c;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/tencent/rtmp/ui/c;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/c;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/rtmp/ui/c;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/rtmp/ui/c;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/tencent/rtmp/ui/c;->d:I

    .line 8
    .line 9
    iget v4, p0, Lcom/tencent/rtmp/ui/c;->e:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->lambda$showFocusView$1(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
