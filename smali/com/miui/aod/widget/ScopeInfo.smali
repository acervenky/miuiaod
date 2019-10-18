.class public Lcom/miui/aod/widget/ScopeInfo;
.super Ljava/lang/Object;
.source "ScopeInfo.java"


# instance fields
.field public mClipR:I

.field public mPoints:I

.field public mResIdImage:I

.field public mResIdThumbnail:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x136

    iput v0, p0, Lcom/miui/aod/widget/ScopeInfo;->mClipR:I

    iput p1, p0, Lcom/miui/aod/widget/ScopeInfo;->mResIdImage:I

    iput p2, p0, Lcom/miui/aod/widget/ScopeInfo;->mResIdThumbnail:I

    iput p3, p0, Lcom/miui/aod/widget/ScopeInfo;->mPoints:I

    return-void
.end method
