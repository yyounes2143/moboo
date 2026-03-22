.class Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method
