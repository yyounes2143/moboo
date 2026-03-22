.class public Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;
.super Landroid/app/Fragment;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/router/ActivityCompat2$Active;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/router/ActivityCompat2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolderFragment"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/didi/drouter/router/ActivityCompat2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/didi/drouter/router/ActivityCompat2;-><init>(Lcom/didi/drouter/router/ActivityCompat2$Active;Lcom/didi/drouter/router/ActivityCompat2$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    const-string v2, "router_start_activity_options"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 2
    .line 3
    iput p3, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "DRouterEmptyFragment"

    .line 14
    .line 15
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/ActivityCompat2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 2
    .line 3
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0, p2, p3}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
