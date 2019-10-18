.class public Lcom/miui/aod/AODUpdatePositionController;
.super Ljava/lang/Object;
.source "AODUpdatePositionController.java"


# static fields
.field private static DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AODUpdatePositionController"


# instance fields
.field private mAodMoveCurrent:I

.field private mAodMovePeriod:I

.field private final mBottomExtraMargin:I

.field private mContext:Landroid/content/Context;

.field private mCutoutHeight:I

.field private mExtraTranslationY:I

.field private mGxzwIconX:I

.field private mGxzwIconY:I

.field private mIsDisplayUpdateModeOn:Z

.field private mIsGxzwIconShow:Z

.field private mScreenSize:Landroid/graphics/Point;

.field private final mTopExtraMargin:I

.field private mTranslationX:I

.field private mTranslationY:I

.field private mTranslationYStep:F

.field private mViewHeight:I

.field private mViewTop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mScreenSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_display_update_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsDisplayUpdateModeOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_move_period"

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMovePeriod:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationYStep:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_move_current"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    invoke-direct {p0, p1}, Lcom/miui/aod/AODUpdatePositionController;->getTranslationY(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mExtraTranslationY:I

    invoke-static {v2}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTopExtraMargin:I

    invoke-static {v2}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mBottomExtraMargin:I

    iget-object v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/AODUpdatePositionController;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mCutoutHeight:I

    invoke-static {p1}, Lcom/miui/aod/Utils;->isUnlockWithFingerprintPossible(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODUpdatePositionController;->setGxzwIconExist(Z)V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getSystemKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "get"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method private getTranslationY(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/common/StyleInfo;->getTranslationY(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isNotchHide(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private printDeviceInfo()V
    .locals 3

    sget-boolean v0, Lcom/miui/aod/AODUpdatePositionController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/AODUpdatePositionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printDeviceInfo:  mGxzwIconX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGxzwIconY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCutoutHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/aod/AODUpdatePositionController;->mCutoutHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateTranslateStep()V
    .locals 5

    iget-object v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/AODUpdatePositionController;->isNotchHide(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/AODUpdatePositionController;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsGxzwIconShow:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsGxzwIconShow:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    iget v4, p0, Lcom/miui/aod/AODUpdatePositionController;->mBottomExtraMargin:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    iget v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mBottomExtraMargin:I

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mCutoutHeight:I

    iget v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mExtraTranslationY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mTopExtraMargin:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mCutoutHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    :cond_3
    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewHeight:I

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_4

    sub-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationYStep:F

    :cond_4
    sget-object v0, Lcom/miui/aod/AODUpdatePositionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTranslateStep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/aod/AODUpdatePositionController;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setGxzwIconExist(Z)V
    .locals 3

    sget-object v0, Lcom/miui/aod/AODUpdatePositionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGxzwIconExist: exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsGxzwIconShow:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsGxzwIconShow:Z

    iget-boolean p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsGxzwIconShow:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateGxzwIconSize()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateTranslateStep()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewPosition(IIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewHeight:I

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewTop:I

    if-eq p1, p2, :cond_1

    :cond_0
    iput p2, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewTop:I

    iput p4, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewHeight:I

    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateTranslateStep()V

    :cond_1
    return-void
.end method

.method public updateGxzwIconSize()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconX:I

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    const-string v1, "persist.sys.fp.fod.location.X_Y"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/AODUpdatePositionController;->getSystemKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "persist.vendor.sys.fp.fod.location.X_Y"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/AODUpdatePositionController;->getSystemKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "persist.sys.fp.fod.size.width_height"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/miui/aod/AODUpdatePositionController;->getSystemKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "persist.vendor.sys.fp.fod.size.width_height"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/miui/aod/AODUpdatePositionController;->getSystemKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconX:I

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mGxzwIconY:I

    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateTranslateStep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateTranslateStep()V

    return-void
.end method

.method public updatePosition(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/aod/AODUpdatePositionController;->updatePosition(Landroid/view/View;Z)V

    return-void
.end method

.method public updatePosition(Landroid/view/View;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mIsDisplayUpdateModeOn:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/miui/aod/AODUpdatePositionController;->TAG:Ljava/lang/String;

    const-string p1, "updatePosition() blocking on setting value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->printDeviceInfo()V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewHeight:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewTop:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewHeight:I

    invoke-direct {p0}, Lcom/miui/aod/AODUpdatePositionController;->updateTranslateStep()V

    :cond_1
    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    iget v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMovePeriod:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationX:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v2, v1

    iget v1, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationYStep:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mViewTop:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/miui/aod/AODUpdatePositionController;->mTranslationY:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    float-to-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p2, :cond_2

    iget p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/aod/AODUpdatePositionController;->mAodMoveCurrent:I

    :cond_2
    :goto_0
    return-void
.end method
