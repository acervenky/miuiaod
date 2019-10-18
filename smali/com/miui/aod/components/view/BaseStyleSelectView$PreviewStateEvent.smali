.class public Lcom/miui/aod/components/view/BaseStyleSelectView$PreviewStateEvent;
.super Ljava/lang/Object;
.source "BaseStyleSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/view/BaseStyleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewStateEvent"
.end annotation


# instance fields
.field public final mIsPreview:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$PreviewStateEvent;->mIsPreview:Z

    return-void
.end method
