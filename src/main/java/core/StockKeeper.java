package core;

import config.IConfigLoader;
import warehouse.DataBaseLoader;
import warehouse.ILoadData;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public class StockKeeper implements Serializable {

    IConfigLoader loaderConfig;
    ILoadData loader;

    public StockKeeper(IConfigLoader loaderConfig) throws Exception {
        this.loaderConfig = loaderConfig;
        loader = getLoader();
        loader.init(loaderConfig);
    }

    public void addTerm(String name) throws Exception {
        getLoader().addTerm(new Term(name));
    }

    public void addTag(String name) throws Exception {
        getLoader().addTag(new Tag(name));
    }

    public void addTagToTerm(String tagName, String termName) throws Exception {
        getLoader().addTagToTerm(new Term(termName), new Tag(tagName));
    }

    public void setSkill(String termName, Skill skill) throws Exception {
        getLoader().setUserSkill(new User(loaderConfig.getUserName()), new Term(termName), skill);
    }

    public List<Term> getTerms() throws Exception {
        List<Term> list = getLoader().getTerms();
        Collections.sort(list);
        return list;
    }

    public List<Tag> getTags() throws Exception {
        List<Tag> list = getLoader().getTags();
        Collections.sort(list);
        return list;
    }

    public UserSkills getUserSkills() throws Exception {
        return getLoader().getUserSkills(new User(loaderConfig.getUserName()));
    }

    public ILoadData getLoader() {
        if (loader != null)
            return loader;
        else
            return new DataBaseLoader(loaderConfig);
    }

    public void saveAll() throws Exception {
        getLoader().saveAll();
    }

    public List<Term> getDependenceTermsAndTags() throws Exception {
        return loader.getDependenceTermAndTag();
    }
}
