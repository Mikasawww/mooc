const base = {
    get() {
        return {
            url : "http://localhost:8080/muke/",
            name: "muke",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/muke/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "大学计算机慕课系统"
        } 
    }
}
export default base
