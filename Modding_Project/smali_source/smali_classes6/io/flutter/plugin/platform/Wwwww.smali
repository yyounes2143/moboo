.class public final synthetic Lio/flutter/plugin/platform/Wwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/platform/PlatformViewsController2;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugin/platform/Wwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 5
    .line 6
    iput p2, p0, Lio/flutter/plugin/platform/Wwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/Wwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugin/platform/Wwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformViewsController2;ILandroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
