.class public Lio/flutter/plugin/editing/ScribePlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mScribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/InputMethodManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lio/flutter/plugin/editing/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lio/flutter/plugin/editing/ScribePlugin;->mView:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Lio/flutter/plugin/editing/ScribePlugin;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    iput-object p3, p0, Lio/flutter/plugin/editing/ScribePlugin;->mScribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    .line 19
    .line 20
    invoke-virtual {p3, p0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->setScribeMethodHandler(Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/ScribePlugin;->mScribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->setScribeMethodHandler(Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isFeatureAvailable()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ScribePlugin;->isStylusHandwritingAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isStylusHandwritingAvailable()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/ScribePlugin;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/plugin/editing/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/inputmethod/InputMethodManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/ScribePlugin;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lio/flutter/plugin/editing/ScribePlugin;->mView:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public startStylusHandwriting()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x21
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/ScribePlugin;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugin/editing/ScribePlugin;->mView:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/flutter/plugin/editing/Wwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
