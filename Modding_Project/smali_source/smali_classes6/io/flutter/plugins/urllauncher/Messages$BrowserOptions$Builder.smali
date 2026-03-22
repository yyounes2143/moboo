.class public final Lio/flutter/plugins/urllauncher/Messages$BrowserOptions$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/Messages$BrowserOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private showTitle:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/urllauncher/Messages$BrowserOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/urllauncher/Messages$BrowserOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/urllauncher/Messages$BrowserOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/Messages$BrowserOptions$Builder;->showTitle:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/urllauncher/Messages$BrowserOptions;->setShowTitle(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setShowTitle(Ljava/lang/Boolean;)Lio/flutter/plugins/urllauncher/Messages$BrowserOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/urllauncher/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/Messages$BrowserOptions$Builder;->showTitle:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method
